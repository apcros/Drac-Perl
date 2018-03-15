package DracPerl::Models::Commands::DellDefault::Fans;
use XML::Rabbit::Root;

has_xpath_object_list 'list' =>
    '/root/sensortype[./sensorid = 4]/thresholdSensorList/sensor' =>
    'DracPerl::Models::Abstract::ThresholdSensor';

finalize_class();

1;
