package DracPerl::Models::Commands::DellDefault::Intrusion;
use XML::Rabbit::Root;

has_xpath_object_list 'list' => '/root/sensortype[./sensorid = 5]/discreteSensorList/sensor' => 'DracPerl::Models::Abstract::DiscreteSensor';

finalize_class();

1;