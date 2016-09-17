package DracPerl::Client;

use Data::Dumper;
use Log::Any qw($log);
use Log::Any::Adapter;
Log::Any::Adapter->set('Stdout');

use LWP::UserAgent;
use Moose;
use XML::Simple qw(XMLin);

has 'ua' => (lazy => 1, is => 'ro', builder => '_build_ua');
has 'url' => (is => 'ro', isa => 'Str', required => 1);
has 'user' => (is => 'ro', isa => 'Str', required => 1);
has 'password' => (is => 'ro', isa => 'Str', required => 1);

#Login can be extremely capricious, Max retries avoid being too 
# annoyed by that
has 'max_retries' => (is => 'ro', isa => 'Int', default => 5);

# Because there's a max number of connections, we need to logout
# After each request to avoid leaving a connection opened
# But because the login is quite slow, we don't want to prevent
# Use cases where multiple gets are going to be done sucessively 
has 'single_use' => (is => 'ro', isa => 'Int', default => 1);

has 'token' => (is => 'rw', isa => 'Str', default => 0);

sub _build_ua {
	my $ua = LWP::UserAgent->new();
	$ua->ssl_opts(verify_hostname => 0);
	$ua->cookie_jar({});

	#Thanks Spotify for theses two headers. 
	#https://github.com/spotify/moob/blob/master/lib/moob/idrac7.rb#L23
	$ua->default_header('Accept-Encoding' => 'gzip,deflate,sdch');
	$ua->default_header('Accept-Language' => 'en-US,en;q=0.8,sv;q=0.6');

	$ua->default_header('Accept' => '*/*');

	return $ua;
}

sub login {
	my $self = shift;

	my $login_form = $self->ua->get($self->url."/login.html");
	$self->_check_res("Login Step 0 performed", $login_form->is_success);

	my $response_raw;
	my $response_xml;
	my $need_to_retry = 1;
	my $current_tries = 1;
	while($need_to_retry) {

		$response_raw = $self->ua->post($self->url."/data/login",{
			user => $self->user,
			password => $self->password
		});
		$response_xml = XMLin($response_raw->decoded_content);
		my $logged = !$response_xml->{authResult};

		$need_to_retry = 0 if $logged;
		$need_to_retry = 0 if $current_tries > $self->max_retries;

		$self->_check_res("Login Step 1 performed (Attempt ".$current_tries."/".$self->max_retries.")", $logged);
		$current_tries++;
	}

	$log->debug("Login Step 1 response : ".$response_raw->decoded_content);

	my @tokens_parts = reverse split("=",$response_xml->{forwardUrl});
	
	$log->info("ST2 Token: ".$tokens_parts[0]);

	$self->token($tokens_parts[0]) if $tokens_parts[0];
	$self->ua->default_header("ST2", $self->token);
	return 1;
}

sub logout {
	my $self = shift;
	my $logout_page = $self->ua->post($self->url."/data/logout");
	$log->debug("Logging out : ".$logout_page->decoded_content);
}

sub get {
	my($self, $query) = @_;
	
	$self->login() unless $self->token; #If the Login token already exist, no need to regenerate a new one

	my $response = $self->ua->post($self->url."/data?get=".$query);

	$self->_check_res("Getting : ".$query, $response->is_success);

	my $parsed_response = XMLin($response->decoded_content) if $response->is_success;

	$self->logout() if $self->single_use;

	return $parsed_response;
}

sub _check_res {
	my($self, $message,$condition) = @_;

	if($condition) {
		$log->info("[SUCCESS] ".$message);
	} else {
		$log->error("[FAILURE] ".$message);
	}
}

1;