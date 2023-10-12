use strict;
use warnings;


sub main {
    # note that all references are scalar types themselves, so they are prefixed with $.
    # This is confusing at first, as you may be used to @ or % prefixing for array and hash.
    # but a reference to these types, is infact a scalar.
    createReferences();
    # A ref can be a ref to another.
    refOfRef();
    # To deference a reference and access the stored values
    deferencing();
    # deferencing via -> operator
    arrayOperatorDereferencing();

}


sub createReferences {
    # A reference is a data type that 'points' to another piece of data or code.
    # often known as a pointer in other languages.  References know the location
    # and type of the data that is stored there.

    my $a = "fondue";  # a simple scalar string type
    my @list = ("one", "two", "three");  # a simple array type
    my %map = ("eggs" => 1, "bacon" => 2);  # a simple hash type
    my sub my_func { s/eggs/sausage/}  # a simple subroutine type

    # create references to the above;
    my $refa = \$a;
    my $reflist = \@list;
    my $refmap = \%map;
    my $reffunc = \&my_func;  # note the: `&` here, required for subroutine names;

    # references to constants work the same way;
    my $pi = \3.14159;

    print($a, "\n", $refa, "\n");
    print(%map, "\n", $refmap, "\n");
}


sub refOfRef {
    my $ref = \("a", "b", "c");
    my $refOfRef = \$ref;
    print($ref, "\n");
    print($refOfRef, "\n");
}

sub deferencing {
    # Deferencing returns the value a reference points to.

    # deferencing a scalar
    my $ref = \"foo";
    my $value = $$ref;
    print($ref, "\n", $value, "\n");

    # deferencing an array
    my $refArray = ["one", "two"];
    my $refArrayValue = @$refArray;

    print($refArray, "\n", $refArrayValue, "\n");

    # deferencing a hash
    my $refHash = {1 => "foo", 2 => "bar"};
    my $refHashValue = %$refHash;
    print($refHash, "\n", $refHashValue, "\n");
}

sub arrayOperatorDereferencing {
    # Deferencing is also possible via the -> operator for arrays & hashes
    # Using the arrow -> operator can only only be used to access a single scalar value.
    my $arrayRef = [1, 2, 3, 4, 5];
    my $hashRef = {1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5};
    print($arrayRef->[1], "\n");
    print($hashRef->{1}, "\n");
}

main();
