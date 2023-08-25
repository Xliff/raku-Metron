#!p6gtkexec
use v6.c;

use WebkitGTK::Raw::Types;

use GLib::Timeout;
use GTK::Application;
use WebkitGTK::UserContent;
use WebkitGTK::UserContentManager;
use WebkitGTK::WebView;
use WebkitGTK::JavaScript::Context;

use GIO::Roles::GFile;

my ($wv, $canceller);
my $a = GTK::Application.new(
  title  => 'org.genex.metron-reference-browser',
  width  => 800,
  height => 1000
);

sub getPodSection ($n) {
  my $t = $=pod.grep( *.name eq $n ).map({
    # cw: Note to #raku -- this is still very painful!
    .contents.map( *.contents[0] ).join("\n")
  }).join('');
}

sub getScript {
  getPodSection('SCRIPT1');
}

sub savePage {
  GLib::Timeout.add(6000, -> *@a {
    $wv.run_javascript(
      'document.documentElement.outerHTML.toString()',
      -> *@a {
        CATCH { default { .message.say } }

        # Finish the javascript.
        $canceller.cancel;
        my $jsResult = $wv.run_javascript_finish(@a[1]);
        without $jsResult {
          say "Error running javascript: { $ERROR.message }" with $ERROR;
          return;
        }

        # Save the HTML...
        my $val = $jsResult.value;
        "METRON-EXPANDED-API.html".IO.spurt($val.to_string)
          if $val && $val.is_string;

        $a.quit;
        exit;
      }

    );

    G_SOURCE_REMOVE.Int;
  });
}

my $time = 15;
$a.activate.tap(-> *@a {
  $wv = WebkitGTK::WebView.new;

  # A lot more work when integrating with JavaScript.
  my $p;
  $wv.load-changed.tap(-> *@a {
    if @a[1] == WEBKIT_LOAD_FINISHED {
      $canceller = $*SCHEDULER.cue(every => 1, {
        say "Waiting { $time-- }...";
        unless $time {
          say 'TIMEOUT REACHED';
          $a.quit
        }
      });

      # Wait for page to settle.
      sleep 2;

      # Attempt to expand all -- first level
      $wv.run_javascript(
        getScript,
        -> *@a {
          CATCH { default { .message.say } }

          # Finish the javascript.
          my $jsResult = $wv.run_javascript_finish(@a[1]);
          without $jsResult {
            say "Error running javascript: { $ERROR.message }" with $ERROR;
            return;
          }
          say $jsResult.value.to_int32;
          say "Saving page...";
          savePage;
          $canceller.cancel;
          $a.quit( :gio );
        }
      );
    }
  });

  $wv.load_uri("https://metron.cloud/docs/");
  $a.window.add($wv);
  $a.window.title = 'ESI Reference Browser';
  $a.window.show_all;
});

$a.run;

=begin SCRIPT1
function fakeClick (event, anchorObj) {
  if (typeof anchorObject === 'undefined') {
    return;
  }
  if (anchorObj.click) {
    anchorObj.click()
  } else if (document.createEvent) {
    if (event.target !== anchorObj) {
      var evt = document.createEvent("MouseEvents");
      evt.initMouseEvent("click", true, true, window,
          0, 0, 0, 0, 0, false, false, false, false, 0, null);
      var allowDefault = anchorObj.dispatchEvent(evt);
    }
  }
}

var sections = document.getElementsByClassName('model-box-control');
var l = sections.length;
var i;
for (s of sections) {
  if (typeof s !== "undefined") {
    console.log(s.innerText || s.textContent);
    fakeClick(s);
  }
}
l
=end SCRIPT1
