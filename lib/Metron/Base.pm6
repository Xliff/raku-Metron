use v6;

use Metron::Global;

class Metron::Base {
  multi method new ($http, :$uri is required) {
    my $r = await $http.get(
      "{ PREFIX }/{ ::?CLASS.^shortname.lc }/{ $uri }"
    );

    ::?CLASS.from-json(await $r);
  }

  multi method new ($http, :$id is required) {
    return Nil unless $id;

    samewith($http, uri => "{ $id }");
  }
}
