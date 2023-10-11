use strict;
use warnings;

sub main {
    scalars();
    arrays();
    hashes();
}


sub scalars {
    # Simple scalar types
    my $string = "foo";
    my $integer = 100_900_200;
    my $floating = 100.250;
    my $scientific = 6.02E23;
    print($string, "\n");
    print($integer, "\n");
    print($floating, "\n");
    print($scientific, "\n");

    # until perl 5.36+ the boolean concept doesn't really exist
    # instead, use 0|1 or some 'falsy' value i.e an empty string
    my $boolean = 0;
    if ( $boolean) {
        print("True.", "\n");
    } else {
        print("False.", "\n");
    }
}

sub arrays {
    my @items = (100, 200, 300);
    for my $item (@items) {
        print($item, "\n");
    }

    my @other = qw/snap crackle pop/;
    print(@other);
}

sub hashes {
    my %associate_array = (
        apples => 1,
        pears => 2,
        oranges => 3,
    );

    # iterate the keys only
    foreach my $k (keys %associate_array) {
        print($k, "\n");
    }

    # iterate the values only
    foreach my $v (values %associate_array) {
        print($v, "\n");
    }

    # iterate both
    while(my($k, $v) = each %associate_array) {
        print($k . " = " . $v . "\n");
    }

}

main();
