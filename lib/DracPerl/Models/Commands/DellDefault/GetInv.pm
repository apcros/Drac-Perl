package DracPerl::Models::Commands::DellDefault::GetInv;
use XML::Rabbit::Root;

has_xpath_object_list 'controllers' =>
    '/root/HWINVs/DCIM_ControllerViews/DCIM_ControllerView' =>
    'DracPerl::Models::Abstract::Controller';

has_xpath_object_list 'memories' =>
    '/root/HWINVs/DCIM_MemoryViews/DCIM_MemoryView' =>
    'DracPerl::Models::Abstract::Memory';

has_xpath_object_list 'nics' => '/root/HWINVs/DCIM_NICViews/DCIM_NICView' =>
    'DracPerl::Models::Abstract::NIC';

has_xpath_object_list 'video_cards' =>
    '/root/HWINVs/DCIM_VideoViews/DCIM_VideoView' =>
    'DracPerl::Models::Abstract::VideoCard';

has_xpath_object_list 'power_supply_slots' =>
    '/root/HWINVs/DCIM_PowerSupplyViews/DCIM_PowerSupplyView' =>
    'DracPerl::Models::Abstract::PowerSupplySlot';

has_xpath_object_list 'physical_disks' =>
    '/root/HWINVs/DCIM_PhysicalDiskViews/DCIM_PhysicalDiskView' =>
    'DracPerl::Models::Abstract::PhysicalDisk';

has_xpath_object_list 'idrac_cards' =>
    '/root/HWINVs/DCIM_iDRACCardViews/DCIM_iDRACCardView' =>
    'DracPerl::Models::Abstract::iDracCard';

has_xpath_object_list 'vflashs' =>
    '/root/HWINVs/DCIM_VFlashViews/DCIM_VFlashView' =>
    'DracPerl::Models::Abstract::VFlash';

has_xpath_object_list 'cpus' => '/root/HWINVs/DCIM_CPUViews/DCIM_CPUView' =>
    'DracPerl::Models::Abstract::CPU';

has_xpath_value 'bios_version' => '/root/SWINVs/BIOS';
has_xpath_value 'lcc_version'  => '/root/SWINVs/Lifecycle_Controller';
has_xpath_value 'diag'         => '/root/SWINVs/DIAG';
has_xpath_value 'os_drivers'   => '/root/SWINVs/OS_Drivers';

finalize_class();

1;
