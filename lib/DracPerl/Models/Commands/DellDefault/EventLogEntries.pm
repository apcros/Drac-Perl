package DracPerl::Models::Commands::DellDefault::EventLogEntries;
use XML::Rabbit::Root;

has_xpath_object_list 'list' => '/root/eventLogEntries/eventLogEntry' => 'DracPerl::Models::Abstract::EventLogEntry';

finalize_class();

1;