use JSON::Class;

class Metron::PaginatedCharacterListList does JSON::Class {
  has Int $!count;
  has Str $!next;
  has Str $!previous;
  has Int $!results;
  has Int $!id;
  has Str $!name;
  has Str $!modified;
}
