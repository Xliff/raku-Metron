use JSON::Class;

class Metron::PaginatedSeriesListList does JSON::Class {
  has Int $!count;
  has Str $!next;
  has Str $!previous;
  has Int $!results;
  has Int $!id;
  has Str $!series;
  has Int $!year_began;
  has Int $!issue_count;
  has Str $!modified;
}
