use JSON::Class;

class Metron::TeamList does JSON::Class {
  has Int $!id;
  has Str $!name;
  has Str $!modified;
}
