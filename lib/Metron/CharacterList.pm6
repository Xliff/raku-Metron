use JSON::Class;

class Metron::CharacterList does JSON::Class {
  has Int $!id;
  has Str $!name;
  has Str $!modified;
}
