#!/usr/bin/env raku

use DOM::Tiny;

sub MAIN (
  $api-file = 'Metron Comicbook Database.html'
) {
  my $markup  = $api-file.IO.slurp or die "Could not find `{ $api-file }`!";
  my $dom     = DOM::Tiny.parse($markup);

  my $classes =  $dom.find('section.models div.model-box > span.model');

  my %classes;
  for $classes[] -> $c {

    if $c.find('.model-title__text').head -> $t {
      my $name = $t.text;
      %classes{$name} = [];

      for $c.find('.property-row td')[] -> $p {
        my ($attr, $type);
        $attr = $p.text;

        next unless $attr;

        if $p.next.find('.prop-type').head -> $pt {
          $type = do given $pt.text {
            when 'integer' { 'Int' }
            when 'string'  { 'Str' }

            default        { ''    }
          }
        }

        %classes{ $t.text }.push: [$attr, $type];
      }
      "lib/Metron/{ $t.text }.pm6".IO.spurt: (my $cd = qq:to/CLASS/);
        use JSON::Class;

        class Metron::{ $name } does JSON::Class \{
        { %classes{$name}.map({ "  has { .tail // '' } \$!{ .head };" }).join("\n"); }
        \}
        CLASS

      say $cd;
    }
  }
}
