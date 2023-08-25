use JSON::Class;

class Metron::Reprint does JSON::Class {
  has Int $!id;
  has Str $!issue;
}
