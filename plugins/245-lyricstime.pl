#
## lyricstime.com support
#

use strict;
use warnings;

scalar {
    site => 'lyricstime.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{id=["']songlyrics["'].*?>.*?<p>\s*(.*?)</p>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
