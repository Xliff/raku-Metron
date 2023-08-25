use JSON::Class;

class Metron::PaginatedIssueListList does JSON::Class {
  has Int $!count;
  has Str $!next;
  has Str $!previous;
  has Int $!results;
  has Int $!id;
  has Int $!series;
  has  $!name;
  has Int $!volume;
  has Int $!year_began;
  has Str $!number;
  has Str $!issue;
  has Str $!cover_date;
  has Str $!image;
  has Str $!cover_hash;
  has Str $!modified;
}
