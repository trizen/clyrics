#
## songlyrics.com support
#

use strict;
use warnings;

scalar {
    site => 'songlyrics.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{id="songLyricsDiv-outer".*?<p.*?>(.*?)</p>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
