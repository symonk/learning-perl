#!/bin/perl
use strict;
use warnings;

=pod
An array is defined using the `@` sigil.  
An array is essentially just a 'list' of scalars.
A list will be covered more in future, they underpin
both arrays and hashes.

An array is declared using (..., ...) parenthesis.
=cut

my @array = (
    1,
    2,
    3,
    4,
    5,
);

=pod
Accessing array elements is done via [n] indexing and when
looking up a value you should use the array in a 'scalar'
context using the `$` sigil like so:
=cut
print "$array[0]\n";
print "$array[4]\n";

=pod
Arrays can be utilised using negative indices to retrieve entities
starting from the tail end of the sequence of scalars.  They are
also Heterogenerous types and can store various scalars.
Trailing commas on the final element are ok also.
=cut
my @other = (
    "foo",
    1,
    # Some magic here, we will cover more in lists but perl cannot
    # determine if this is a hash or array ref, so it nests them.
    # this array 'other' is single dimension with 5 elements now.
    (1,2,3),  
);

print "$other[-1]\n";
print "$other[-2] was flattened into the single dimension array\n";

=pod
When an array is evaluated in a scalar context, it returns the number
of elements stored within the array:
=cut
print "This array has ".(scalar @other)." elements\n";
print "The last element index was: $#other\n";