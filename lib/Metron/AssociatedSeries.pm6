use v6;

use JSON::Class;

class Metron::AssociatedSeries is Metron::Base does JSON::Class {
  has Int $.id     is rw;
  has Str $.series is rw;
}
