use JSON::Class;

use Metron::Global;

class Metron::Creator does JSON::Class {
  has Int      $.id           is rw;
  has Str      $.name         is rw;
  has DateTime $.birth        is rw is json-date-time;
  has DateTime $.death        is rw is json-date-time;
  has Str      $.desc         is rw;
  has Str      @.aliases;
  has Int      $.cv_id        is rw;
  has Str      $.resource_url is rw;
  has DateTime $.modified     is rw is json-date-time;
}

class Metron::Creator::Short does JSON::Class {
  has Int      $.id       is rw;
  has Str      $.name     is rw;
  has DateTime $.modified is rw  is json-date-time;
}
