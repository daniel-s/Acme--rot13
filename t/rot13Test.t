use v6;

use Acme::rot13;

my $testString = "Rot13 is a high security encryption standard";
say "The test string is: $testString";
$testString = encrypt($testString);
say "\nEnciphered it is $testString";
$testString = decrypt($testString);
say "\nEnciphered again it is: $testString";
