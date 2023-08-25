use JSON::Class;

use Metron::Global;

class Metron::Publisher does JSON::Class {
  has Int      $.id           is rw;
  has Str      $.name         is rw;
  has Int      $.founded      is rw;
  has Str      $.desc         is rw;
  has Str      $.image        is rw;
  has Int      $.cv_id        is rw;
  has Str      $.resource_url is rw;
  has DateTime $.modified     is rw  is json-date-time;
}

sub Publisher_MAIN is export {
  Metron::Publisher.from-json( q:to/JSON/ ).gist.say;
    {
      "id": 1,
      "name": "Marvel",
      "founded": 1939,
      "desc": "Marvel Comics is the brand name and primary imprint of Marvel Worldwide Inc., formerly Marvel Publishing, Inc. and Marvel Comics Group, a publisher of American comic books and related media. In 2009, The Walt Disney Company acquired Marvel Entertainment, Marvel Worldwide's parent company.\r\n\r\nMarvel started in 1939 as Timely Publications, and by the early 1950s, had generally become known as Atlas Comics. The Marvel branding began in 1961, the year that the company launched The Fantastic Four and other superhero titles created by Steve Ditko, Stan Lee, Jack Kirby and many others.",
      "image": "https://static.metron.cloud/media/publisher/2018/11/11/marvel.jpg",
      "cv_id": null,
      "resource_url": "https://metron.cloud/publisher/marvel/",
      "modified": "2019-06-23T15:13:23.591390-04:00"
    }
    JSON
}
