use JSON::Class;

class Metron::SeriesType does JSON::Class {
  has Int $!id;
  has Str $!name;
}
