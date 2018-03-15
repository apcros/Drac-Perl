package DracPerl::Models::Abstract::VFlash;
use XML::Rabbit;

has_xpath_value 'id'       => './InstanceID';
has_xpath_value 'capacity' => './Capacity';
has_xpath_value 'name'     => './ComponentName';

finalize_class();

1;
