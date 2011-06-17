use v6;

module ACME::rot13;

sub encrypt(Str $string) is export
{
	my $newString = '';
	# this loop takes one character at a time,
	# putting it in $char1
	for $string.split('') -> $char1 is copy
	{
		# test to see if it's a lower case, regular character
		if 'a'.ord <= $char1.ord <= 'z'.ord
		{
			if $char1.ord < 'n'.ord
			{
				$char1 = ($char1.ord + 13).chr;
			} else {
				$char1 = ($char1.ord - 13).chr;
			}
		}
		if 'A'.ord <= $char1.ord <= 'Z'.ord
		{
			if $char1.ord < 'N'.ord
			{
				$char1 = ($char1.ord + 13).chr;
			} else {
				$char1 = ($char1.ord - 13).chr;
			}
		}
		$newString ~= $char1;
	}
	return $newString;
}

# If you use this subroutine... I really don't think you
# get the point of rot13
sub decrypt(Str $string) is export {encrypt($string)}

