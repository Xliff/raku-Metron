use v6.c;

use Test;

use Metron::Issue;

my $json;

my $m = Metron::Issue.from-json($json);

for $m.^attributes {
  say "{ .?name // .^name } -> { .gist.say }"
    for .get_value($m);
}

$m.gist.say;


INIT {
  $json = q:to/JSON/;
    {
      "id": 44879,
      "publisher": {
        "id": 1,
        "name": "Marvel"
      },
      "series": {
        "id": 3249,
        "name": "The Amazing Spider-Man",
        "sort_name": "Amazing Spider-Man, The",
        "volume": 6,
        "series_type": {
          "id": 1,
          "name": "Ongoing Series"
        },
        "genres": [
          {
            "id": 10,
            "name": "Super-Hero"
          }
        ]
      },
      "number": "1",
      "title": "",
      "name": [],
      "cover_date": "2022-06-01",
      "store_date": "2022-04-27",
      "price": "5.99",
      "rating": {
        "id": 3,
        "name": "Teen"
      },
      "sku": "FEB220786",
      "isbn": "",
      "upc": "75960620200300111",
      "page": 60,
      "desc": "WHAT DID SPIDER-MAN DO?! Peter’s on the outs with the FF. He’s on the outs with the Avengers. He’s on the outs with Aunt May! No one wants to see Spider-Man—except for Doctor Octopus. Ock’s on Spider-Man’s tail and the Master Planner has something truly terrible planned for when he gets his tentacles on Spidey. All that, and what does Tombstone have planned? Just in time for Spider-Man’s 60th Anniversary, a new volume of AMAZING SPIDER-MAN begins, and 2022 is going to be the biggest year for Spider-Man EVER! Don’t believe us? We brought John Romita Jr. back JUST FOR THIS!",
      "image": "https://static.metron.cloud/media/issue/2022/03/11/asm-1.png",
      "cover_hash": "dc2306f9bd49c439",
      "arcs": [],
      "credits": [
        {
          "id": 804,
          "creator": "Bengal",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 942,
          "creator": "Brian Reber",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 215,
          "creator": "C. B. Cebulski",
          "role": [
            {
              "id": 20,
              "name": "Editor In Chief"
            }
          ]
        },
        {
          "id": 214,
          "creator": "Edgar Delgado",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 260,
          "creator": "Humberto Ramos",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 555,
          "creator": "InHyuk Lee",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 264,
          "creator": "Jason Keith",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 552,
          "creator": "Jay David Ramos",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 150,
          "creator": "Jim Cheung",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 296,
          "creator": "Joe Caramagna",
          "role": [
            {
              "id": 6,
              "name": "Letterer"
            }
          ]
        },
        {
          "id": 151,
          "creator": "John Romita Jr.",
          "role": [
            {
              "id": 2,
              "name": "Artist"
            },
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 153,
          "creator": "John Romita Sr.",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 5653,
          "creator": "Kaeden McGahey",
          "role": [
            {
              "id": 12,
              "name": "Assistant Editor"
            }
          ]
        },
        {
          "id": 1557,
          "creator": "Lindsey Cohick",
          "role": [
            {
              "id": 12,
              "name": "Assistant Editor"
            }
          ]
        },
        {
          "id": 785,
          "creator": "Marcio Menyz",
          "role": [
            {
              "id": 5,
              "name": "Colorist"
            },
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 813,
          "creator": "Mark Bagley",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 604,
          "creator": "Nick Lowe",
          "role": [
            {
              "id": 8,
              "name": "Editor"
            }
          ]
        },
        {
          "id": 395,
          "creator": "Patrick Gleason",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 2855,
          "creator": "Peach Momoko",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 90,
          "creator": "Scott Hanna",
          "role": [
            {
              "id": 4,
              "name": "Inker"
            },
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 143,
          "creator": "Stanley Lau",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 974,
          "creator": "Travis Charest",
          "role": [
            {
              "id": 7,
              "name": "Cover"
            }
          ]
        },
        {
          "id": 2353,
          "creator": "Zeb Wells",
          "role": [
            {
              "id": 1,
              "name": "Writer"
            }
          ]
        }
      ],
      "characters": [
        {
          "id": 595,
          "name": "Aunt May",
          "modified": "2019-06-23T15:13:19.664769-04:00"
        },
        {
          "id": 15569,
          "name": "Black Mariah",
          "modified": "2022-07-06T08:34:48.467855-04:00"
        },
        {
          "id": 15568,
          "name": "Digger (Carnevale)",
          "modified": "2022-07-06T08:31:22.599472-04:00"
        },
        {
          "id": 474,
          "name": "Doctor Octopus",
          "modified": "2019-06-23T15:13:20.008013-04:00"
        },
        {
          "id": 1659,
          "name": "Hammerhead",
          "modified": "2019-06-23T15:13:20.242221-04:00"
        },
        {
          "id": 364,
          "name": "Human Torch",
          "modified": "2020-12-24T13:18:56.423052-05:00"
        },
        {
          "id": 1401,
          "name": "Madame Masque",
          "modified": "2019-06-23T15:13:20.541471-04:00"
        },
        {
          "id": 592,
          "name": "Mary Jane Watson",
          "modified": "2019-06-23T15:13:20.596990-04:00"
        },
        {
          "id": 972,
          "name": "Mister Negative",
          "modified": "2019-06-23T15:13:20.653248-04:00"
        },
        {
          "id": 604,
          "name": "Randy Robertson",
          "modified": "2019-06-23T15:13:20.877568-04:00"
        },
        {
          "id": 145,
          "name": "Spider-Man",
          "modified": "2023-04-11T14:32:42.291439-04:00"
        },
        {
          "id": 2969,
          "name": "The Rose",
          "modified": "2019-11-16T18:05:25.223396-05:00"
        },
        {
          "id": 139,
          "name": "Tombstone",
          "modified": "2019-06-23T15:13:21.212722-04:00"
        },
        {
          "id": 637,
          "name": "White Rabbit",
          "modified": "2021-05-01T16:26:01.128438-04:00"
        },
        {
          "id": 5575,
          "name": "Willis Stryker",
          "modified": "2021-02-04T15:45:30.977564-05:00"
        }
      ],
      "teams": [],
      "reprints": [],
      "variants": [
        {
          "name": "Gleason Web-Head Variant",
          "sku": "FEB220794",
          "upc": "75960620200300118",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1b.jpg"
        },
        {
          "name": "Artgerm Variant",
          "sku": "FEB220797",
          "upc": "75960620200300191",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1c.webp"
        },
        {
          "name": "Incentive 1:100 Bagley Hidden Gem Variant",
          "sku": "FEB220799",
          "upc": "75960620200300121",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1d.jpg"
        },
        {
          "name": "Lee Variant",
          "sku": "FEB220798",
          "upc": "75960620200300123",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1e.jpg"
        },
        {
          "name": "Incentive 1:25 Ramos Variant",
          "sku": "FEB220787",
          "upc": "75960620200300117",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1f.jpg"
        },
        {
          "name": "Bengal Connecting Variant",
          "sku": "FEB220793",
          "upc": "75960620200300120",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1g.jpg"
        },
        {
          "name": "1:50 Dauterman Variant",
          "sku": "FEB220791",
          "upc": "75960620200300151",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1g_C9lAB3l.jpg"
        },
        {
          "name": "Momoko Variant",
          "sku": "FEB220795",
          "upc": "75960620200300181",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1h.jpg"
        },
        {
          "name": "Young Variant",
          "sku": "FEB220792",
          "upc": "75960620200300119",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1i.jpg"
        },
        {
          "name": "Cheung Variant",
          "sku": "FEB220790",
          "upc": "75960620200300116",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1j.jpg"
        },
        {
          "name": "Bagley Variant",
          "sku": "FEB220788",
          "upc": "75960620200300171",
          "image": "https://static.metron.cloud/media/variants/2022/03/11/asm-1k.jpg"
        }
      ],
      "cv_id": 919313,
      "resource_url": "https://metron.cloud/issue/the-amazing-spider-man-2022-1/",
      "modified": "2023-05-19T19:43:02.555112-04:00"
    }
    JSON

}
