package DracPerl::Models::Commands::DellDefault::Temperatures;
use XML::Rabbit::Root;

has_xpath_object_list 'list' =>
    '/root/sensortype[./sensorid = 1]/thresholdSensorList/sensor' =>
    'DracPerl::Models::Abstract::ThresholdSensor';

finalize_class();

1;
