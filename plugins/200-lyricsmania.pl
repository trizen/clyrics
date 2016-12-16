#
## lyricsmania.com support
#

use strict;
use warnings;

scalar {
    site => 'lyricsmania.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div\h+class="lyrics-body".*?</strong>\s*(.*?)</div>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
