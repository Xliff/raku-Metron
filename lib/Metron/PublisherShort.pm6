use v6;

use JSON::Class;

use Metron::Base;

class Metron::PublisherShort does JSON::Class {
  has Int $.id       is rw;
  has Str $.name     is rw;
  has Str $.modified is rw;
}

my $static-data;

class Metron::PublisherShort::List is Metron::Base does JSON::Class {
  has Int                    $.count;
  has Str                    $.next;
  has Str                    $.prev;
  has Metron::PublisherShort @.results;

  multi method new ($http) {
    samewith($http, uri => '');
  }

  multi method new ( :$static is required ) {
    ::?CLASS.from-json($static-data);
  }
}

sub PublisherShort_MAIN is export {
  Metron::PublisherShort::List.new( :static ).gist.say;
}

BEGIN {
  $static-data = q:to/JSON/;
    {
      "count": 65,
      "next": null,
      "previous": null,
      "results": [
        {
          "id": 29,
          "name": "12-Gauge Comics",
          "modified": "2019-11-03T17:16:03.835821-05:00"
        },
        {
          "id": 64,
          "name": "AAA Pop Comics",
          "modified": "2023-07-24T08:21:06.019465-04:00"
        },
        {
          "id": 36,
          "name": "AWA Studios",
          "modified": "2020-07-06T21:36:46.414152-04:00"
        },
        {
          "id": 56,
          "name": "Aardvark-Vanaheim",
          "modified": "2023-04-29T16:56:46.004672-04:00"
        },
        {
          "id": 53,
          "name": "Ablaze Publishing",
          "modified": "2023-03-10T14:20:43.184123-05:00"
        },
        {
          "id": 48,
          "name": "Abrams Books",
          "modified": "2022-09-11T13:24:07.522952-04:00"
        },
        {
          "id": 46,
          "name": "Abstract Studio",
          "modified": "2022-08-10T11:41:24.195663-04:00"
        },
        {
          "id": 10,
          "name": "AfterShock Comics",
          "modified": "2019-06-23T15:13:23.576978-04:00"
        },
        {
          "id": 5,
          "name": "Ahoy Comics",
          "modified": "2022-02-19T16:41:30.025544-05:00"
        },
        {
          "id": 40,
          "name": "America's Best Comics",
          "modified": "2021-05-15T12:37:35.924174-04:00"
        },
        {
          "id": 47,
          "name": "Antarctic Press",
          "modified": "2022-08-19T09:41:57.756143-04:00"
        },
        {
          "id": 65,
          "name": "Archaia",
          "modified": "2023-08-08T08:17:04.813400-04:00"
        },
        {
          "id": 13,
          "name": "Archie Comics",
          "modified": "2019-06-23T15:13:23.578934-04:00"
        },
        {
          "id": 14,
          "name": "Archie Horror",
          "modified": "2019-06-23T15:13:23.579822-04:00"
        },
        {
          "id": 58,
          "name": "Atlas Comics",
          "modified": "2023-05-04T16:23:57.334414-04:00"
        },
        {
          "id": 9,
          "name": "Avatar Press",
          "modified": "2019-06-23T15:13:23.580731-04:00"
        },
        {
          "id": 43,
          "name": "Bad Idea",
          "modified": "2021-08-11T00:00:51.694576-04:00"
        },
        {
          "id": 51,
          "name": "Black Mask Studios",
          "modified": "2023-01-05T09:31:04.295038-05:00"
        },
        {
          "id": 15,
          "name": "Bongo Comics",
          "modified": "2019-06-23T15:13:23.581612-04:00"
        },
        {
          "id": 20,
          "name": "Boom! Studios",
          "modified": "2019-06-23T15:13:23.582479-04:00"
        },
        {
          "id": 19,
          "name": "Cartoon Books",
          "modified": "2019-06-23T15:13:23.583322-04:00"
        },
        {
          "id": 17,
          "name": "Cliffhanger",
          "modified": "2019-06-23T15:13:23.584163-04:00"
        },
        {
          "id": 38,
          "name": "ComiXology Originals",
          "modified": "2021-04-01T22:27:34.194258-04:00"
        },
        {
          "id": 44,
          "name": "CrossGen",
          "modified": "2021-09-06T09:19:04.926987-04:00"
        },
        {
          "id": 26,
          "name": "DC Black Label",
          "modified": "2019-09-24T10:54:21.471987-04:00"
        },
        {
          "id": 2,
          "name": "DC Comics",
          "modified": "2019-06-23T15:13:23.585052-04:00"
        },
        {
          "id": 3,
          "name": "Dark Horse Comics",
          "modified": "2019-06-23T15:13:23.585926-04:00"
        },
        {
          "id": 60,
          "name": "Devil's Due Publishing",
          "modified": "2023-06-08T08:02:56.322861-04:00"
        },
        {
          "id": 21,
          "name": "Dynamite Entertainment",
          "modified": "2019-06-23T15:13:23.586978-04:00"
        },
        {
          "id": 30,
          "name": "Epic Comics",
          "modified": "2019-11-05T09:03:47.589731-05:00"
        },
        {
          "id": 16,
          "name": "Exploding Albatross Funnybooks",
          "modified": "2019-06-23T15:13:23.587853-04:00"
        },
        {
          "id": 42,
          "name": "Fantagraphics",
          "modified": "2021-07-28T15:31:07.430210-04:00"
        },
        {
          "id": 63,
          "name": "Fawcett Publications",
          "modified": "2023-07-09T07:22:54.071531-04:00"
        },
        {
          "id": 57,
          "name": "Fox Comics",
          "modified": "2023-05-03T07:50:49.497402-04:00"
        },
        {
          "id": 50,
          "name": "Frank Miller Presents",
          "modified": "2022-11-26T08:56:12.490901-05:00"
        },
        {
          "id": 41,
          "name": "Graphix",
          "modified": "2021-06-23T15:45:36.163835-04:00"
        },
        {
          "id": 25,
          "name": "Heavy Metal",
          "modified": "2019-09-24T11:03:04.661036-04:00"
        },
        {
          "id": 37,
          "name": "Homage Comics",
          "modified": "2020-10-25T17:30:59.853190-04:00"
        },
        {
          "id": 6,
          "name": "IDW Publishing",
          "modified": "2019-06-23T15:13:23.588743-04:00"
        },
        {
          "id": 33,
          "name": "Icon Comics",
          "modified": "2020-02-10T09:28:44.743893-05:00"
        },
        {
          "id": 4,
          "name": "Image Comics",
          "modified": "2019-06-23T15:13:23.589640-04:00"
        },
        {
          "id": 22,
          "name": "Legendary Comics",
          "modified": "2019-06-23T15:13:23.590524-04:00"
        },
        {
          "id": 45,
          "name": "Les Humanoïdes Associés",
          "modified": "2021-11-07T11:47:11.164295-05:00"
        },
        {
          "id": 27,
          "name": "Lion Forge Comics",
          "modified": "2019-10-04T15:50:24.706209-04:00"
        },
        {
          "id": 54,
          "name": "Mad Cave Studios",
          "modified": "2023-04-12T16:58:37.710257-04:00"
        },
        {
          "id": 61,
          "name": "Malibu Comics",
          "modified": "2023-06-09T08:29:46.699846-04:00"
        },
        {
          "id": 1,
          "name": "Marvel",
          "modified": "2019-06-23T15:13:23.591390-04:00"
        },
        {
          "id": 24,
          "name": "Marvel Knights",
          "modified": "2019-07-16T08:26:37.809922-04:00"
        },
        {
          "id": 12,
          "name": "Max",
          "modified": "2019-06-23T15:13:23.592258-04:00"
        },
        {
          "id": 11,
          "name": "MonkeyBrain Comics",
          "modified": "2019-06-23T15:13:23.593166-04:00"
        },
        {
          "id": 31,
          "name": "Oni Press",
          "modified": "2019-11-09T00:02:04.314082-05:00"
        },
        {
          "id": 52,
          "name": "Pacific Comics",
          "modified": "2023-02-14T07:50:27.519667-05:00"
        },
        {
          "id": 34,
          "name": "Panel Syndicate",
          "modified": "2020-05-03T09:17:20.522254-04:00"
        },
        {
          "id": 62,
          "name": "Prize Publications",
          "modified": "2023-07-02T16:13:20.884256-04:00"
        },
        {
          "id": 55,
          "name": "Quality Comics",
          "modified": "2023-04-28T15:51:46.077079-04:00"
        },
        {
          "id": 49,
          "name": "Scout Comics",
          "modified": "2022-11-19T09:19:01.769976-05:00"
        },
        {
          "id": 39,
          "name": "Shadowline",
          "modified": "2021-05-07T08:56:31.746980-04:00"
        },
        {
          "id": 18,
          "name": "Skybound",
          "modified": "2019-06-23T15:13:23.594107-04:00"
        },
        {
          "id": 32,
          "name": "Tangent Comics",
          "modified": "2019-11-17T09:34:28.349685-05:00"
        },
        {
          "id": 59,
          "name": "Timely Comics",
          "modified": "2023-05-07T08:31:30.998908-04:00"
        },
        {
          "id": 35,
          "name": "Top Cow",
          "modified": "2020-06-17T22:58:15.677580-04:00"
        },
        {
          "id": 23,
          "name": "Valiant",
          "modified": "2019-06-23T15:13:23.594968-04:00"
        },
        {
          "id": 28,
          "name": "Vault Comics",
          "modified": "2019-10-18T21:54:54.600193-04:00"
        },
        {
          "id": 7,
          "name": "Vertigo Comics",
          "modified": "2019-06-23T15:13:23.595836-04:00"
        },
        {
          "id": 8,
          "name": "Wildstorm",
          "modified": "2019-06-23T15:13:23.596832-04:00"
        }
      ]
    }
    JSON

}
