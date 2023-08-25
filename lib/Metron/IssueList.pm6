use JSON::Class;

class Metron::Series does JSON::Class {
  has Str $.name       is rw is built;
  has Int $.volume     is rw is built;
  has Int $.year-began is rw is built;
}

class Metron::IssueList does JSON::Class {
  has Int $.id         is built;
  has Str $.series     is built;
  has Str $.number     is built;
  has Str $.issue      is built;
  has Str $.cover_date is built;
  has Str $.image      is built;
  has Str $.cover_hash is built;
  has Str $.modified   is built;
}
