package DracPerl::Models::Abstract::NIC;
use XML::Rabbit;

has_xpath_value 'id'                    => './InstanceID';
has_xpath_value 'name'                  => './ProductName';
has_xpath_value 'iscsi_mac_address'     => './PermanentiSCSIMACAddress';
has_xpath_value 'permanent_mac_address' => './PermanentMACAddress';
has_xpath_value 'current_mac_address'   => './CurrentMACAddress';

finalize_class();

1;
