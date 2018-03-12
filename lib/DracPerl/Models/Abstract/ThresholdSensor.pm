package DracPerl::Models::Abstract::ThresholdSensor;
use XML::Rabbit;

has_xpath_value 'name' => './name';
has_xpath_value 'reading' => './reading';
has_xpath_value 'units' => './units';
has_xpath_value 'status' => './sensorStatus';
has_xpath_value 'min_warning' => './minWarning';
has_xpath_value 'max_warning' => './maxWarning';
has_xpath_value 'min_failure' => './minFailure';
has_xpath_value 'max_failure' => './maxFailure';

finalize_class();

1;