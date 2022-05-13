#
## versuri.ro support
#

use strict;
use warnings;

scalar {
    site => 'versuri.ro',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div id="textdiv">(.*?)<div class="noprint"}is) {
            my $lyrics = $1;
            $lyrics =~ s{<script>(.*?)</script>}{}sg;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
