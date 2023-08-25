use JSON::Class;

use Metron::Global;

use Metron::Creator;

class Metron::Team does JSON::Class {
  has Int             $.id            is rw;
  has Str             $.name          is rw;
  has Str             $.desc          is rw;
  has Str             $.image         is rw;
  has Metron::Creator @.creators;
  has Str             $.resource_url  is rw;
  has DateTime        $.modified      is rw  is json-date-time;
}
