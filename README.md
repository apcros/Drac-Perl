[![Build Status](https://travis-ci.org/apcros/Drac-Perl.svg?branch=master)](https://travis-ci.org/apcros/Drac-Perl)
# Drac-Perl
A client to interact with the iDRAC API on Dell Poweredge servers

## Why ?
This been created because I find the web interface of iDrac slow and far from being easy to use. 
I have the project of creating a full new iDrac front-end, but of course that project required an API Client. Because this is something that seem to be quite lacking in the PowerEdge community, I made a standalone repo/project for that :)

## How ? 

A Simple perl client, using Moose and XML::Simple, iDRAC authentification can be tricky but overall the only thing you need to do to use my module is : 

`my $drac = DracPerl::Client->new({user => 'username', password => 'password', url => 'https://idrac'});`

There's few additional parameters that you can use : 

- max_retries => Defaulted to 5, the number of time the client will try to authenticate before giving up. (Usually 2-3 attempts are enough)
- single_use => Defaulted to 1
There's a limit in the number of opened connections you can have on iDrac, if this is set to 0, the api client will not logout between two requests. Careful with that as that might leads to cases where you create loads of sessions and you can't log anymore until they're expired. 

## What's to come ? 

- Better error handling
- Integration with Log4Perl
- Full list of supported Method 
- Few method to abstract commons operations
- Tests and Travis integrations 
