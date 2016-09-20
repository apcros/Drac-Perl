# NAME

DracPerl::Client - API Client for Dell's management interface (iDRAC)

# AUTHOR

Jules Decol (@Apcros)

# SYNOPSIS

        # Create the client
        my $drac_client = DracPerl::Client->new({
                        user            => "username",
                        password        => "password",
                        url             => "https://dracip",
                        });

        # Get what you're interested in
        # Login is done implicitly
        my $parsed_xml = $drac_client->get("fans");

# DESCRIPTION

This has been created because I wanted to create my own version of the web Interface of iDRAC
and an API Client was needed for that purpose.

This allow you to get all the informations that you can get from the iDRAC web interface.
(The interface actually use a backend XML API)

# OBJECT ARGUMENTS

## max\_retries

Login can be extremely capricious, Max retries avoid being too
annoyed by that. Defaulted to 5.

## single\_use

Because there's a max number of connections, we need to logout
After each request to avoid leaving a connection opened
But because the login is quite slow, we don't want to prevent
Use cases where multiple gets are going to be done sucessively
