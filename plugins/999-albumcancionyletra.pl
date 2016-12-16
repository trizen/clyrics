#
## albumcancionyletra.com support
#

use strict;
use warnings;

scalar {
    site => 'albumcancionyletra.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div class="letra">(.*?)</div>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
