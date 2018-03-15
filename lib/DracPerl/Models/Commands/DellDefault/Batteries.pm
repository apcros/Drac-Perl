package DracPerl::Models::Commands::DellDefault::Batteries;
use XML::Rabbit::Root;

has_xpath_object_list 'list' =>
    '/root/sensortype[./sensorid = 41]/discreteSensorList/sensor' =>
    'DracPerl::Models::Abstract::DiscreteSensor';

finalize_class();

1;
