use JSON::Class;

use Metron::Genre;
use Metron::SeriesType;

class Metron::IssueSeries does JSON::Class {
  has Int                $.id           is rw;
  has Str                $.name         is rw;
  has Str                $.sort_name    is rw;
  has Int                $.volume       is rw;
  has Metron::SeriesType @.series_type;
  has Metron::Genre      @.genres;
}
