use JSON::Class;

use Metron::Global;

use Metron::CreatorList;
use Metron::Team;

class Metron::Character does JSON::Class {
  has Int                 $.id           is rw;
  has Str                 $.name         is rw;
  has Str                 $.alias        is rw;
  has Str                 $.desc         is rw;
  has Str                 $.image        is rw;
  has Metron::CreatorList $.creators     is rw;
  has Metron::Team        @.teams;
  has Int                 $.cv_id        is rw;
  has Str                 $.resource_url is rw;
  has DateTime            $.modified     is rw  is json-date-time;
}
