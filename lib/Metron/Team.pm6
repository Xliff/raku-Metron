use JSON::Class;

use Metron::Base;
use Metron::Global;

use Metron::Creator;

class Metron::Team is Metron::Base does JSON::Class {
  has Int             $.id            is rw;
  has Str             $.name          is rw;
  has Str             $.desc          is rw;
  has Str             $.image         is rw;
  has Metron::Creator @.creators;
  has Str             $.resource_url  is rw;
  has DateTime        $.modified      is rw  is json-date-time;
}

sub Team_MAIN is export {
  Metron::Team.from-json( q:to/JSON/ ).gist.say;
    {
      "id": 744,
      "name": "Arkham Knights",
      "desc": "A group of reformed villains.",
      "image": "https://static.metron.cloud/media/team/2023/02/09/3421fdc429ee4834aa7c089927de3c88.jpg",
      "creators": [],
      "cv_id": null,
      "resource_url": "https://metron.cloud/team/arkham-knights/",
      "modified": "2023-02-09T15:55:46.752907-05:00"
    }
    JSON

}
