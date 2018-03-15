package DracPerl::Models::Abstract::Memory;
use XML::Rabbit;

has_xpath_value 'id'          => './InstanceID';
has_xpath_value 'part_number' => './PartNumber';
has_xpath_value 'model'       => './Model';
has_xpath_value 'size'        => './Size';
has_xpath_value 'speed'       => './Speed';

finalize_class();

1;
