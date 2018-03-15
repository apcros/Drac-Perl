package DracPerl::Models::Abstract::PowerSupplySlot;
use XML::Rabbit;

has_xpath_value 'id' => './InstanceID';
has_xpath_value 'firmware_version' => './FirmwareVersion';
has_xpath_value 'manufacturer' => './Manufacturer';
has_xpath_value 'part_number' => './PartNumber';
has_xpath_value 'serial_number' => './SerialNumber';
has_xpath_value 'model' => './Model';

finalize_class();

1;