package DracPerl::Models::Abstract::RacLogEntry;
use XML::Rabbit;

has_xpath_value 'source' => './source';
has_xpath_value 'date_time' => './dateTime';
has_xpath_value 'date_time_order' => './dateTimeOrder';
has_xpath_value 'description' => './description';

finalize_class();

1;