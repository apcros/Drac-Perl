package DracPerl::Client;

use Data::Dumper;
use LWP::UserAgent;
use Moose;

has 'ua' => (lazy => 1, is => 'ro', builder => '_build_ua');
has 'url' => (is => 'ro', isa => 'Str', required => 1);
has 'username' => (is => 'ro', isa => 'Str', required => 1);
has 'password' => (is => 'ro', isa => 'Str', required => 1);

has 'debug' => (is => 'rw', isa => 'Int', default => 0);

sub _build_ua {
	my $ua = LWP::UserAgent->new();
	$ua->ssl_opts(verify_hostname => 0);
	$ua->cookie_jar({});
	return $ua;
}

sub login {
	my $self = shift;

	my $initial = $self->ua->get($self->url."/login.html");
	print Dumper($initial) if $self->debug;

	my $response = $self->ua->post($self->url."/data/login",{
			username => $self->username,
			password => $self->password
		});

	print Dumper($response) if $self->debug; 
	return $response->decoded_content;
}

sub get {
	my($self, $query) = @_;
	print $self->login();
	my $response = $self->ua->post($self->url."/data",{
			get => $query,
	});

	return $response->decoded_content;
}

1;