package DracPerl::Factories::CustomCommand;

use MooseX::AbstractFactory;

implementation_class_via sub { 'DracPerl::Models::Commands::Custom::' . ucfirst(shift) };

1;