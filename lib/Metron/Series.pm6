use JSON::Class;

use Metron::AssociatedSeries;
use Metron::Genre;
use Metron::Publisher;

class Metron::SeriesType does JSON::Class {
  has Int $!id;
  has Str $!name;
}

class Metron::Series does JSON::Class {
  has Int                      $.id           is rw;
  has Str                      $.name         is rw;
  has Str                      $.sort_name    is rw;
  has Int                      $.volume       is rw;
  has Metron::SeriesType       $.series_type  is rw;
  has Metron::Publisher        $.publisher    is rw;
  has Int                      $.year_began   is rw;
  has Int                      $.year_end     is rw;
  has Str                      $.desc         is rw;
  has Int                      $.issue_count  is rw;
  has Metron::Genre            @.genres;
  has Metron::AssociatedSeries @.associated;
  has Int                      $.cv_id        is rw;
  has Str                      $.resource_url is rw;
  has Str                      $.modified     is rw;
}
