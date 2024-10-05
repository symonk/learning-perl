use strict;
use warnings;

=pod
In perl, the type system essentially offers 3 main types.
A scalar
An Array
A hash (map)
=cut

# undef is your 'null' | 'None' type in perl.
# These can be assigned to a scalar type.
my $undef_scalar = undef;

# A number
# Perl does not distinguish between an integer and float.
my $one_hundred = 100;
my $decimal = 0.5;

# A string
my $one_hundred_str = '100';

#  A reference to any other type, including arrays and hashes.
my $foo = 'foo';
my $fooRef = \$foo;

=pod
Perl has no 'boolean' explicit data type.  A scalar evaluated in the following
'if' conditionals returns false in these cases:

my $false = 0;
my $false = "";
my $false = "0";
my $false = undef;
=cut

my $false = 0;
if (!$false) {
    print "false was set to zero.\n"
}


=pod
It is not possible to determine if a scalar variable is a number
or a string.  These oddities are outlined below, but may raise
some warnings when the 'use warnings;' pragma is set.
=cut

my $str_number1 = '400H';
my $str_number2 = '900G';

# Depending on the 'operator' perl will treat them as numeric or
# string types.
# Notice, when evaluated in the boolean context, it returns `1`
# to represent 'true'.
print $str_number1 + $str_number2 == 1300;
# Argument "900G" isn't numeric in addition (+) at 01_variables.pl line 54.
# Argument "400H" isn't numeric in addition (+) at 01_variables.pl line 54.
# 1%   
print "\n";
print $str_number1 . $str_number2 eq "400H900G\n";
