use v6;

use Metron::Global;

class Metron::Base {
  method make-rest-call ($http, $uri, \C = ::?CLASS) {
    my $r = await $http.get($uri);

    C.from-json(await $r);
  }

  multi method new ($http, :$uri is required) {
    self.make-rest-request(
      $http,
      "{ PREFIX }/{ ::?CLASS.^shortname.lc }/{ $uri }"
    );
  }

  multi method new ($http, :$id is required) {
    return Nil unless $id;

    samewith($http, uri => "{ $id }");
  }
}
