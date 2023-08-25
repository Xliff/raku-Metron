use JSON::Class;

use Metron::Role;

class Metron::Credit does JSON::Class {
  has Int          $.id      is rw;
  has Str          $.creator is rw;
  has Metron::Role @.role;
}

sub Credit_MAIN is export {
  Metron::Credit.from-json( q:to/JSON/ ).gist.say;
    {
      "id": 804,
      "creator": "Bengal",
      "role": [
        {
          "id": 7,
          "name": "Cover"
        }
      ]
    }
    JSON
}
