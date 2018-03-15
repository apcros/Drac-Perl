package DracPerl::Models::Abstract::iDracCard;
use XML::Rabbit;

has_xpath_value 'id' => './InstanceID';
has_xpath_value 'firmware_version' => './FirmwareVersion';
has_xpath_value 'model' => './Model';

finalize_class();

1;