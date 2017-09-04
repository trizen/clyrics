#
## lyricskong.com support
#

use strict;
use warnings;

scalar {
    site => 'lyricskong.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div class="lyric-body">(.*?)</div>}is) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
