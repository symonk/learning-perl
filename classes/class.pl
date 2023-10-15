package Car;

use strict;
use warnings;

sub new {
  my ($class, $args) = @_;
  my $self = bless {
    wheels => args{wheels},
    colour => args{color},
    brand => args{brand},
}, $class;


sub get_wheels {
  my $self = shift;
  return $self->{wheels};
}

sub get_color {
  my $self = shift;
  return $self->{color};
}
