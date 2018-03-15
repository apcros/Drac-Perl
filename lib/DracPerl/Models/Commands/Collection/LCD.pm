package DracPerl::Models::Commands::Collection::LCD;
use XML::Rabbit::Root;

has_xpath_value 'color' => '/root/lcdColor';
has_xpath_value 'text' => '/root/lcdText';
has_xpath_value 'blink' => '/root/lcdBlink';

finalize_class();

1;