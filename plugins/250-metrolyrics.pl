#
## metrolyrics.com support
#

use strict;
use warnings;

scalar {
    site => 'metrolyrics.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<p\s+class=['"]verse['"]>(.*?)</div>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<p\s+class=["']verse["']>}{\n\n}gi;
            $lyrics =~ s{<.*?>}{}sg;
            return if unpack('A*', $lyrics) eq '';
            $lyrics =~ s/\R\R\R+/\n\n/g;
            return $lyrics;
        }

        return;
    }
  }
