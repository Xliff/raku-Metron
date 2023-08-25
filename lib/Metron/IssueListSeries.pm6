use JSON::Class;

class Metron::IssueListSeries does JSON::Class {
  has Str $!name;
  has Int $!volume;
  has Int $!year_began;
}
