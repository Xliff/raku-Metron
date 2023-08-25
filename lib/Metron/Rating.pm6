use JSON::Class;

class Metron::Rating does JSON::Class {
  has Int $!id;
  has Str $!name;
}
