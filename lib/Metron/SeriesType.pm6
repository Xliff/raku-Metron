use v6;

use JSON::Class;

use Metron::Base;

class Metron::SeriesType does JSON::Class {
  has Int $.id   is rw;
  has Str $.name is rw;
}

my $static-data;

class Metron::SeriesType::List is Metron::Base does JSON::Class {
    has Int                $.count    is rw;
    has Str                $.next     is rw;
    has Str                $.prev     is rw;
    has Metron::SeriesType @.results;
}

sub SeriesType_MAIN is export {
  Metron::SeriesType::List.from-json($static-data).gist.say;
}

BEGIN {
  $static-data = q:to/JSON/;
    {
      "count": 8,
      "next": null,
      "previous": null,
      "results": [
        {
          "id": 6,
          "name": "Annual Series"
        },
        {
          "id": 2,
          "name": "Cancelled Series"
        },
        {
          "id": 9,
          "name": "Graphic Novel"
        },
        {
          "id": 8,
          "name": "Hard Cover"
        },
        {
          "id": 11,
          "name": "Limited Series"
        },
        {
          "id": 5,
          "name": "One-Shot"
        },
        {
          "id": 1,
          "name": "Ongoing Series"
        },
        {
          "id": 10,
          "name": "Trade Paperback"
        }
      ]
    }
    JSON
}
