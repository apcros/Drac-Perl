package DracPerl::Models::Abstract::DiscreteSensor;
use XML::Rabbit;

has_xpath_value 'name' => './name';
has_xpath_value 'reading' => './reading';
has_xpath_value 'status' => './sensorStatus';

finalize_class();

1;