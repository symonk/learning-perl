use strict;
use warnings;

=pod
Just like lists cannot contain lists within themselves
arrays and hashes cannot contain other arrays and hashes
as elements within themselves, they can only contain
scalars.  Let's see what happens:
=cut
my @outer = ("Mercury", "Venus", "Mars", undef);
my @inner = ("Earth", "Moon");

# Attempt to assign the 4th element in outer to the inner
# array.  This is a subtle mistake, because as we've learned
# $outer[3] is expecting a scalar value and will treat the
# value as such, but what happens when its an array? we would
# store the length of inner in the array outer.
$outer[3] = @inner;
print "We have stored the length of inner at: $outer[3]\n";
print @outer;  # mercuryVenusMars2.

=pod
In order to avoid such a problem, scalars CAN be assigned to
pointers to other types, references to other variables.  Lets
see what that looks like in action:
=cut
# basic pointer/reference example for a scalar:
my $x = "xxx";
my $ref = \$x;
print $$ref;
print "\n";
# An array example:
my @arr = (1,2,3,4,5);
my $ref = \@arr;
print $ref->[0];
print "\n";
print @arr[1];
print "\n";
print ${$ref}[2];
print "\n";

# A hash example
my %h = (foo => "foo", bar => "bar", baz => "baz");
my $r = \%h;

print $h{"foo"};
print "\n";
print ${$r}{"bar"};
print "\n";
print $r->{"baz"};
print "\n";
