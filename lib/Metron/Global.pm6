use v6;

use DateTime::Parse;

constant PREFIX = 'metron.cloud/api/';

class X::Metron::InvalidClient is Exception {
  method message {
    'REST Client value must be Cro::HTTP::Client-compatible!'
  }
}

role Metron::Roles::DateTimeDeserializer {

  method json-unmarshal ($v) {
    return DateTime unless $v;

    my $dt = DateTime.new($v);
    return $dt if $dt && $dt ~~ DateTime;

    $dt = try DateTime::Parse.new($v);
    return $dt if $dt && $dt ~~ DateTime;

    DateTime;
  }

}

multi sub trait_mod:<is> (Attribute \a, :$json-date-time is required)
  is export
{
  a does Metron::Roles::DateTimeDeserializer
    unless a ~~ Metron::Roles::DateTimeDeserializer;
}
