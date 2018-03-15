package DracPerl::Models::Abstract::Controller;
use XML::Rabbit;

has_xpath_value 'id'               => './InstanceID';
has_xpath_value 'name'             => './ProductName';
has_xpath_value 'firmware_version' => './ControllerFirmwareVersion';

finalize_class();

1;
