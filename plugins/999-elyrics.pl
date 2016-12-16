#
## elyrics.net support
#

use strict;
use warnings;

scalar {
    site => 'elyrics.net',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div id='loading'>.*?</div>(.*?)<p><em>}is) {
            my $lyrics = $1;
            $lyrics =~ s{<br\h*/?>}{\n}gi;
            return $lyrics;
        }

        return;
    }
  }
