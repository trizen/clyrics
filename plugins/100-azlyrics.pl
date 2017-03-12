#
## azlyrics.com support
#

use strict;
use warnings;

scalar {
    site => 'azlyrics.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<span.+?id="cf_text_top".*?></span>.*?<div>(.*?)</div>}is) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            $lyrics =~ s/^\s+//;
            return $lyrics;
        }

        return;
    }
  }
