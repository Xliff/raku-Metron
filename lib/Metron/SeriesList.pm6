use JSON::Class;

class Metron::SeriesList does JSON::Class {
  has Int $!id;
  has Str $!series;
  has Int $!year_began;
  has Int $!issue_count;
  has Str $!modified;
}
