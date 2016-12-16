#
## artists.letssingit.com support
#

use strict;
use warnings;

scalar {
    site => 'artists.letssingit.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{\bid=lyrics\b.*?">(.*?)</DIV>}is) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
