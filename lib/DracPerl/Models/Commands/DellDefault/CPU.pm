package DracPerl::Models::Abstract::CPU;
use XML::Rabbit;

has_xpath_value 'id'           => './InstanceID';
has_xpath_value 'model'        => './Model';
has_xpath_value 'manufacturer' => './Manufacturer';

finalize_class();

1;
