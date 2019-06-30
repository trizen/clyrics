#
## www.versuri.us support
#

use strict;
use warnings;

scalar {
    site => 'versuri.us',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div class="single_title">(.*?)<div class="clear">}si) {
            my $lyrics = $1;
            $lyrics =~ s{<script>.*?</script>}{}sg;
            $lyrics =~ s{<p>}{\n}g;
            $lyrics =~ s{<.*?>}{}sg;
            $lyrics =~ s{^\s+}{};
            $lyrics =~ s{(\R\s*){2,}}{$1$1}g;
            $lyrics =~ s{^\h+}{}gm;
            return $lyrics;
        }

        return;
    }
  }
