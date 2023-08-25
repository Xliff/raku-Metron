use JSON::Class;

class Metron::AssociatedSeries does JSON::Class {
  has Int $.id     is rw;
  has Str $.series is rw;
}
