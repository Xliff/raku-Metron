use JSON::Class;

class Metron::PaginatedSeriesTypeList does JSON::Class {
  has Int $!count;
  has Str $!next;
  has Str $!previous;
  has Int $!results;
  has Int $!id;
  has Str $!name;
}
