use JSON::Class;

class Metron::IssueSeries does JSON::Class {
  has Int $!id;
  has Str $!name;
  has Str $!sort_name;
  has Int $!volume;
  has Int $!series_type;
  has Int $!id;
  has Str $!name;
  has  $!genres;
  has  $!id;
  has  $!name;
}
