use strict;
use warnings;

sub main {
   quoting();
   str_len(); 
   casing();
}

sub quoting {
    my $single = 'This is a single quoted string and does not do any interpolation.';
    my $insert = "inserted";
    my $double = "\nThis is a double quoted string and can include an $insert string.";
    print($single, $double);

    my $alternative1 = q/This is another way to create a single quoted sting!/;
    my $alternative2 = qq/This is a double quoted string. $insert/;
    print($alternative1, "\n");
    print($alternative2, "\n");
}

sub str_len {
    print(length("foo"), "\n");
}


sub casing {
    my $word = "fOo";
    print(uc($word), "\n");
    print(lc($word), "\n");
}

main();
