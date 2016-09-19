use Test::More;
use DracPerl::Client;

BEGIN {
        $ENV{ LWP_UA_MOCK } ||= 'playback';
        $ENV{ LWP_UA_MOCK_FILE } ||= 't/mocked/idrac.out';
}

use LWP::UserAgent::Mockable;
isa_ok my $drac_client = DracPerl::Client->new({
		user 		=> "username", 
		password 	=> "password", 
		url 		=> "https://dracip",
		}), "DracPerl::Client", "Object instanciated correctly";

is $drac_client->login(), 1, "Login is sucessful";

is length $drac_client->token, 32,"Token is present after login"; 

ok my $fans_xml = $drac_client->get("fans"), "Fans data is retrieved sucessfully";

is $fans_xml->{sensortype}->{sensorid}, "4", "Fans data is correct";

is $drac_client->token, 0,"Token has been wiped because client is in single use"; 

END {
	LWP::UserAgent::Mockable->finished;
}

done_testing();