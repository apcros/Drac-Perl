package DracPerl::Models::Commands::Collection::SystemInformations;
use XML::Rabbit::Root;

has_xpath_value 'pw_state' => '/root/pwState';
has_xpath_value 'sys_desc' => '/root/sysDesc';
has_xpath_value 'sys_rev' => '/root/sysRev';
has_xpath_value 'hostname' => '/root/hostName';
has_xpath_value 'os_version' => '/root/osVersion';
has_xpath_value 'os_name' => '/root/osName';
has_xpath_value 'svc_tag' => '/root/svcTag';
has_xpath_value 'bios_ver' => '/root/biosVer';
has_xpath_value 'fw_version' => '/root/fwVersion';
has_xpath_value 'lcc_fw_version' => '/root/LCCfwVersion';


finalize_class();

1;