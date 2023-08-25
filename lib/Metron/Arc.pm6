use JSON::Class;

use Metron::Global;

class Metron::Arc does JSON::Class {
  has Int $.id           is rw;
  has Str $.name         is rw;
  has Str $.desc         is rw;
  has Str $.image        is rw;
  has Int $.cv_id        is rw;
  has Str $.resource_url is rw;
  has Str $.modified     is rw;
}

sub Arc_MAIN is export {
  Metron::Arc.from-json( q:to/JSON/ ).gist.say;
    {
      "id": 466,
      "name": "2099",
      "desc": "2099 stubbed description",
      "image": "https://www.stub/images/2099",
      "cv_id": null,
      "resource_url": "https://metron.cloud/arc/2099/",
      "modified": "2021-06-03T23:41:19.652401-04:00"
    }
    JSON

}
