use JSON::Class;

class Metron::Role does JSON::Class {
  has Int $.id   is rw;
  has Str $.name is rw;
}
