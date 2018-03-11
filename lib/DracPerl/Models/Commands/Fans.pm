package DracPerl::Models::Commands::Fans;
use XML::Rabbit::Root;

has_xpath_object_list 'list' => '/root/sensortype[./sensorid = 4]/thresholdSensorList/sensor' => 'DracPerl::Models::ThresholdSensor';

finalize_class();

1;