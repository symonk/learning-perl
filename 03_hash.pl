use strict;
use warnings;

=pod
A hash is a list of scalars, indexed by strings.  In other languages
this is also commonly known as a map, dictionary (hashmap).  It is
declared using the '%' sigil and the keys can be literal strings or
words that are wrapped in strings, similar to pythons `dict(a=1, b=2)`.
Accessing elements is done using the $hash{...} syntax.
=cut
my %h = (
    foo => "foo",
    bar => "bar",
    three => 3,
);

=pod
Since accessing the values in a hash is actually fetching a 'scalar'
value we again use the $ sigil when accessing elements.
=cut
print "$h{'foo'}\n";
# accessing without '' is not advised but works:
print "$h{three}\n";

=pod
A hash can be converted to an array where the length of the elements
is all the scalar string (keys) and the corresponding scalar values.
=cut
my %items = (one=>1, two=>2, word=> "word", other => (1,2,3,4,5));
my @squashed = %items;
print "@squashed\n";
# hash order is not guaranteed, so order may not be in sequence
# word word other 1 one 1 4 5 2 3 two 2