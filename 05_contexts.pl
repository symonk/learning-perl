use strict;
use warnings;

=pod
Perls most distinctive feature is that its code is context
sensitive.  Every expression in perl is evaluated either in scalar
context or list context.
This is dependent on if it is expected to produce a scalar or
a list.  Without knowing the context in which an expression is 
evaluated, it is impossible to determine what it will evaluate too.
=cut

# A scalar assignment evaluates the expression in a scalar context
my $scalar = "foo";

# An array assignment evaluates the expression in a list context
my @arr = (1,2,3);

# A hash assignment evaluates the expression in a list context
my %h = (one => 1, two => 2);

=pod
A scalar expression evaluated in list context is silently converted
into a single element list.
The opposite, a list expression evaluated in a scalar context returns
the number of elements in the list
=cut
my @single = "foo"; # Equates to ("foo");
print "@single\n";

my $total = @single;
print "total: $total\n";

=pod
When evaluating a List (again not array) expression in a scalar context
the final element is returned, not the length of the array, let's recap:
=cut
my @arr = (1,2,3);
my $size_arr = @arr;
print "Total elements in arr: $size_arr\n";  # 3.

my $last = (1,2,3,4,5);
print "was list, last element is: $last\n";  # 5.

=pod
Various perl built in drastically change their behaviour depending on the 
context in which variables are used.  Two prevalent examples are
the builtin `print` function evaluates it's arguments in 'list' context
and the `reverse` builtin returns either the reversed single element if
used in a scalar context OR the entire list reversed if used in a list
context.  These are demonstrated below:
=cut
my @arr = (1,2,3,4);
my $scal = "Hello World";
print @arr, $scal; #1234Hello World;
print "\n";
print reverse @arr;  # 4321
print "\n";
print reverse $scal; # Hello World - you might of expected reversed here.
print "\n";
# to achieve what you would expect here, force the scalar context
my $reversed = reverse $scal;
print "$reversed\n";
# or:
print scalar reverse $scal;
print "\n";
my @other = (1,2,3);
print scalar @other;  # short cut to get the length of other in a scalar context!
