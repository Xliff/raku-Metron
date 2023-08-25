use JSON::Class;

class Metron::VariantsIssue does JSON::Class {
  has Str $.name  is rw;
  has Str $.sku   is rw;
  has Str $.upc   is rw;
  has Str $.image is rw;
}
