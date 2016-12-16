#
## letras.com support
#

use strict;
use warnings;

scalar {
    site => 'letras.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div id="div_letra".*?><p>(.*?)</div>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
