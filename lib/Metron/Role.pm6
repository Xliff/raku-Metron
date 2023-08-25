use v6;

use JSON::Class;

use Metron::Base;

class Metron::Role does JSON::Class {
  has Int $.id   is rw;
  has Str $.name is rw;
}

my $static-data;

class Metron::RoleList is Metron::Base does JSON::Class {
  has Int          $.count;
  has Str          $.next;
  has Str          $.prev;
  has Metron::Role @.results;

  multi method new ($http) {
    samewith($http, uri => '');
  }

  multi method new ( :$static is required ) {
    ::?CLASS.from-json($static-data);
  }
}

sub RoleList_MAIN is export {
  Metron::RoleList.new( :static ).gist.say;
}


BEGIN {
  $static-data = q:to/JSON/;
    {
      "count": 40,
      "next": null,
      "previous": null,
      "results": [
        {
          "id": 1,
          "name": "Writer"
        },
        {
          "id": 22,
          "name": "Script"
        },
        {
          "id": 30,
          "name": "Story"
        },
        {
          "id": 23,
          "name": "Plot"
        },
        {
          "id": 27,
          "name": "Interviewer"
        },
        {
          "id": 2,
          "name": "Artist"
        },
        {
          "id": 3,
          "name": "Penciller"
        },
        {
          "id": 13,
          "name": "Breakdowns"
        },
        {
          "id": 33,
          "name": "Illustrator"
        },
        {
          "id": 21,
          "name": "Layouts"
        },
        {
          "id": 4,
          "name": "Inker"
        },
        {
          "id": 34,
          "name": "Embellisher"
        },
        {
          "id": 35,
          "name": "Finishes"
        },
        {
          "id": 29,
          "name": "Ink Assists"
        },
        {
          "id": 5,
          "name": "Colorist"
        },
        {
          "id": 38,
          "name": "Color Separations"
        },
        {
          "id": 16,
          "name": "Color Assists"
        },
        {
          "id": 26,
          "name": "Color Flats"
        },
        {
          "id": 36,
          "name": "Digital Art Technician"
        },
        {
          "id": 37,
          "name": "Gray Tone"
        },
        {
          "id": 6,
          "name": "Letterer"
        },
        {
          "id": 7,
          "name": "Cover"
        },
        {
          "id": 8,
          "name": "Editor"
        },
        {
          "id": 28,
          "name": "Consulting Editor"
        },
        {
          "id": 12,
          "name": "Assistant Editor"
        },
        {
          "id": 9,
          "name": "Associate Editor"
        },
        {
          "id": 11,
          "name": "Group Editor"
        },
        {
          "id": 32,
          "name": "Senior Editor"
        },
        {
          "id": 40,
          "name": "Managing Editor"
        },
        {
          "id": 41,
          "name": "Collection Editor"
        },
        {
          "id": 14,
          "name": "Production"
        },
        {
          "id": 15,
          "name": "Designer"
        },
        {
          "id": 39,
          "name": "Logo Design"
        },
        {
          "id": 24,
          "name": "Supervising Editor"
        },
        {
          "id": 25,
          "name": "Executive Editor"
        },
        {
          "id": 20,
          "name": "Editor In Chief"
        },
        {
          "id": 19,
          "name": "President"
        },
        {
          "id": 31,
          "name": "Publisher"
        },
        {
          "id": 18,
          "name": "Chief Creative Officer"
        },
        {
          "id": 17,
          "name": "Executive Producer"
        }
      ]
    }
    JSON
}
