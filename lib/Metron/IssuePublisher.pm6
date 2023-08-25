use JSON::Class;

class Metron::IssuePublisher does JSON::Class {
  has Int $!id;
  has Str $!name;
}
