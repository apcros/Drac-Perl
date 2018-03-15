package DracPerl::Models::Abstract::VideoCard;
use XML::Rabbit;

has_xpath_value 'id' => './InstanceID';
has_xpath_value 'description' => './Description';
has_xpath_value 'manufacturer' => './Manufacturer';

finalize_class();

1;