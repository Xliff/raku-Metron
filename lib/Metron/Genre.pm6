use JSON::Class;

class Metron::Genre does JSON::Class {
  has Int $.id   is rw;
  has Str $.name is rw;
}
