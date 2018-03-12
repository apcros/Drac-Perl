package DracPerl::Models::Commands::DellDefault::Fans;
use XML::Rabbit::Root;

has_xpath_object_list 'list' => '/root/sensortype[./sensorid = 8]/psSensorList/sensor' => 'DracPerl::Models::Abstract::PowerSupplySensor';

finalize_class();

1;