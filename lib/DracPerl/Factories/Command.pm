package DracPerl::Factories::Command;

use MooseX::AbstractFactory;

implementation_class_via sub { 'DracPerl::Models::Commands::' . ucfirst(shift) };

1;