package DracPerl::Models::Abstract::PowerSupplySensor;
use XML::Rabbit;

has_xpath_value 'location' => './location';
has_xpath_value 'input_wattage' => './inputWattage';
has_xpath_value 'max_wattage' => './maxWattage';
has_xpath_value 'fw_version' => './fwVersion';
has_xpath_value 'status' => './sensorStatus';
has_xpath_value 'online_status' => './onlineStatus';
has_xpath_value 'type' => './type';

finalize_class();

1;