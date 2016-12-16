#
## val.fm support
#

use strict;
use warnings;

scalar {
    site => 'val.fm',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{class="song-text.*?>(.*?)</div>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<p\s+class=['"]verse['"]>}{\n\n}gi;
            $lyrics =~ s{<.*?>}{}sg;
            return if unpack('A*', $lyrics) eq '';
            return $lyrics;
        }

        return;
    }
  }
