package DracPerl::Models::Abstract::PhysicalDisk;
use XML::Rabbit;

has_xpath_value 'id' => './InstanceID';
has_xpath_value 'manufacturer' => './Manufacturer';
has_xpath_value 'serial_number' => './SerialNumber';
has_xpath_value 'model' => './Model';
has_xpath_value 'size_in_bytes' => './SizeInBytes';

finalize_class();

1;