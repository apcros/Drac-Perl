package DracPerl::Models::Commands::DellDefault::RacLogEntries;
use XML::Rabbit::Root;

has_xpath_object_list 'list' => '/root/racLogEntries/racLogEntry' => 'DracPerl::Models::Abstract::RacLogEntry';

finalize_class();

1;