#
## lyrics.wikia.com support
#

use strict;
use warnings;

scalar {
    site => 'lyrics.wikia.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div\b.*? class='lyricbox'.*?>(.*?)</div>}is) {
            my $lyrics = $1;
            $lyrics =~ s{<br\h*/?>}{\n}gi;
            $lyrics =~ s/<.*?>//gs;
            return $lyrics;
        }

        return;
    }
  }
