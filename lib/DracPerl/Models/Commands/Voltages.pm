package DracPerl::Models::Commands::Voltages;
use XML::Rabbit::Root;

has_xpath_object_list 'list' => '/root/sensortype[./sensorid = 2]/discreteSensorList/sensor' => 'DracPerl::Models::DiscreteSensor';

finalize_class();

1;