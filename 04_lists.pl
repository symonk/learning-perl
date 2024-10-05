use strict;
use warnings;

=pod
A list in perl is a different thing from arrays or hashes but often a 
common point of confusion.  In the arrays and hash segments previous
we have used lists.  Think of arrays and hashes as 'values' and lists
and the underpinning data structure.
=cut

# A 'list' we've seen in the 'arrays' segment previously
(1,2,3,4,5);

# A 'list' we've seen in the 'hash' segment previously
(a => "a", b => "b", three => 3);

=pod
You will of noticed, both assignments for arrays and hashes are identicle
when we understand the '=>' is just a 'fat comma' and should be considered
as a => "a" is just a, "a".  When we understand that, the following examples
make more sense:
=cut
my @one = ("one", 1, "two", 2);
my %two = ("one" => 1, "two" => 2);

=pod
The above indicates an ARRAY and a HASH declaration, but both are just
pointing to 'lists' under the hood.
The caveat here is that, perl has absolutely no way to know if a list
is a hash or array when doing things like nested contexts, such as:
=cut

my @elements = (
    1,
    2,
    (foo => "foo", bar => "bar"),
    3,
);

# perl has no choice but to condense the nested list into elements as 
# a single dimension sequence of scalars
print "@elements\n";
# 1 2 foo foo bar bar 3;

# BEWARE, this can cause some oddities, heres one:
# an 'uneven' hash of 7 elements!
my %seven = (
    foo => "foo",
    bar => "bar",
    "flattened" => (
        "green" => "wait",
        "yellow" => "eat",
    ),
);

print $seven{"foo"} eq "foo";  # 1
print $seven{"bar"} eq "bar"; # 1
print $seven{"flattened"} eq "green"; # 1 (Weird - perl has flattened this)
print $seven{"wait"} eq "yellow"; # 1
print $seven{"yellow"} eq "eat"; # 1
# Ok, now the weird one, we have no value for "eat!"
print $seven{"eat"} == undef;
print "\n";

=pod
One core benefit of this, is easily allows concatenation of many arrays.
=cut
my @one = (1,2,3);
my @two = (4,5, (6,7,8));
my @three = (9, (10, 11, 12), (13, 14), 15);
my @all = (@one, @two, @three);
print "@all\n";
