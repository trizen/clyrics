#
## genius.com support
#

use strict;
use warnings;

scalar {
    site => 'genius.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div class="lyrics">(.*?)</div>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}gs;
            return $lyrics;
        }

        return;
    }
  }
