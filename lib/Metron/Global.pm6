use v6;

use DateTime::Parse;

role Metron::Roles::DateTimeDeserializer {

  method json-unmarshal ($v) {
    return DateTime unless $v;
    my $dt = DateTime.new($v);
    say "V: $v";
    return $dt if $dt && $dt ~~ DateTime;
    DateTime::Parse.new($v);
  }

}

multi sub trait_mod:<is> (Attribute \a, :$json-date-time is required)
  is export
{
  a does Metron::Roles::DateTimeDeserializer
    unless a ~~ Metron::Roles::DateTimeDeserializer;
}
