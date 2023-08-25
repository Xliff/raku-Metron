use JSON::Class;

class Metron::PublisherList does JSON::Class {
  has Int $!id;
  has Str $!name;
  has Str $!modified;
}
