#
## yololyrics.com support
#

use strict;
use warnings;

scalar {
    site => 'yololyrics.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div\h+class="data_content">(.*?)<div}is) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
