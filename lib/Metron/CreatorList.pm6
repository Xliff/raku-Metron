use JSON::Class;

class Metron::CreatorList does JSON::Class {
  has Int $!id;
  has Str $!name;
  has Str $!modified;
}
