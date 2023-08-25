use JSON::Class;

class Metron::Arc does JSON::Class {
  has Int $!id;
  has Str $!name;
  has Str $!desc;
  has Str $!image;
  has Int $!cv_id;
  has Str $!resource_url;
  has Str $!modified;
}
