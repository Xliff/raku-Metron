use v6;

use JSON::Class;

use Metron::Global;

use Metron::ArcList;
use Metron::Base;
use Metron::Character;
use Metron::Credit;
use Metron::Publisher;
use Metron::Rating;
use Metron::Reprint;
use Metron::Series;
use Metron::Team;
use Metron::VariantsIssue;

class Metron::Issue is Metron::Base does JSON::Class {
  has Int                   $.id           is rw;
  has Metron::Publisher     $.publisher    is rw;
  has Metron::Series        $.series       is rw;
  has Str                   $.number       is rw;
  has Str                   $.title        is rw;
  has Str                   $.name         is rw;
  has DateTime              $.cover_date   is rw  is json-date-time;
  has DateTime              $.store_date   is rw  is json-date-time;
  has Str                   $.price        is rw;
  has Metron::Rating        $.rating       is rw;
  has Str                   $.sku          is rw;
  has Str                   $.isbn         is rw;
  has Str                   $.upc          is rw;
  has Int                   $.pages        is rw;
  has Str                   $.desc         is rw;
  has Str                   $.image        is rw;
  has Str                   $.cover_hash   is rw;
  has Metron::ArcList       @.arcs;
  has Metron::Credit        @.credits;
  has Metron::Character     @.characters;
  has Metron::Team          @.teams;
  has Metron::Reprint       @.reprints;
  has Metron::VariantsIssue @.variants;
  has Int                   $.cv_id        is rw;
  has Str                   $.resource_url is rw;
  has DateTime              $.modified     is rw  is json-date-time;

  method new ($http) {
    X::Metron::InvalidClient.new.throw
      unless $http ~~ Cro::HTTP::Client;

    self.bless( :$http );
  }

  multi method new ($http, :$upc is required) {
    return Nil unless $upc;

    # cw: Check the cloud for the upc
    my $r = await $http.get(
      "{ PREFIX }/api/issue?upc={ $upc }",
    );

    ::?CLASS.from-json(await $r.body);
  }

}
