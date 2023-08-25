use JSON::Class;

class Metron::ArcList does JSON::Class {
  has Int $!id;
  has Str $!name;
  has Str $!modified;
}
