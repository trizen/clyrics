#
## albumcancionyletra.com support
#

use strict;
use warnings;

scalar {
    site => 'albumcancionyletra.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div class="letra">(.*?</script>)\s*</div>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<script>(.*?)</script>}{}gs;
            $lyrics =~ s{<br\h*/?>}{\n}gi;
            $lyrics =~ s{<.*?>}{}sg;
            $lyrics =~ s/^\s+//;
            return $lyrics;
        }

        return;
    }
  }
