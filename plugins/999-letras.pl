#
## letras.com support
#

use strict;
use warnings;

scalar {
    site => 'letras.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<article>(.*?)</article>}si) {
            my $lyrics = $1;
            $lyrics =~ s/<\s*\/\s*p>/\n\n/g;
            $lyrics =~ s/<br\s*\/\s*>/\n/g;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
