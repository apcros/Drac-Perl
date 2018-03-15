package DracPerl::Models::Commands::DellDefault::FansRedundancy;
use XML::Rabbit::Root;

has_xpath_object_list 'list' =>
    '/root/sensortype[./sensorid = 256]/discreteSensorList/sensor' =>
    'DracPerl::Models::Abstract::DiscreteSensor';

finalize_class();

1;
