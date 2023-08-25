use JSON::Class;

use Metron::Global;
use Metron::Base;

use Metron::Creator;
use Metron::Team;

class Metron::Character is Metron::Base does JSON::Class {
  has Int                    $.id           is rw;
  has Str                    $.name         is rw;
  has Str                    $.alias        is rw;
  has Str                    $.desc         is rw;
  has Str                    $.image        is rw;
  has Metron::Creator::Short @.creators     is rw;
  has Metron::Team           @.teams;
  has Int                    $.cv_id        is rw;
  has Str                    $.resource_url is rw;
  has DateTime               $.modified     is rw  is json-date-time;
}

sub Character_MAIN is export {
  Metron::Character.from-json( q:to/JSON/ ).gist.say;
    {
      "id": 1,
      "name": "Black Bolt",
      "alias": [],
      "desc": "Black Bolt (Blackagar Boltagon) is a fictional character appearing in American comic books published by Marvel Comics. Created by Stan Lee and Jack Kirby, the character first appears in Fantastic Four #45 (December 1965). Black Bolt is the ruler of the Inhumans, a reclusive race of genetically altered superhumans. Black Bolt's signature power is his voice, as his electron-harnessing ability is linked to the speech center of his brain. Speaking triggers a massive disturbance in the form of a highly destructive shockwave capable of leveling a city. Due to the extreme danger posed by this power, the character has undergone rigorous mental training to prevent himself from uttering a sound, even in his sleep, and he usually remains completely silent and speaks through sign language or via a spokesperson.",
      "image": "https://static.metron.cloud/media/character/2018/11/11/black-bolt.jpg",
      "creators": [
        {
          "id": 3,
          "name": "Jack Kirby",
          "modified": "2019-06-23T15:13:22.311024-04:00"
        },
        {
          "id": 4,
          "name": "Stan Lee",
          "modified": "2019-06-23T15:13:23.355492-04:00"
        }
      ],
      "teams": [
        {
          "id": 473,
          "name": "Attilan Royal Family",
          "modified": "2021-09-09T15:51:41.452921-04:00"
        },
        {
          "id": 179,
          "name": "Illuminati",
          "modified": "2019-07-24T17:23:21.137732-04:00"
        },
        {
          "id": 1,
          "name": "Inhumans",
          "modified": "2019-06-23T15:13:23.975156-04:00"
        }
      ],
      "cv_id": null,
      "resource_url": "https://metron.cloud/character/black-bolt/",
      "modified": "2021-09-09T15:52:49.090281-04:00"
    }
    JSON

}
