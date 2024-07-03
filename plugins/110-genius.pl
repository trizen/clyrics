#
## genius.com support
#

use strict;
use warnings;

scalar {
    site => 'genius.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{\bJSON\.parse\('(.*?)'\);}si) {
            my $lyrics = $1;

            $lyrics =~ s/\\(.)/$1/gs;

            $lyrics = eval {
                require JSON::PP;
                my $json = JSON::PP->new;
                my $hash = $json->decode($lyrics);
                $hash->{songPage}{lyricsData}{body}{html};
            };

            $lyrics || return;
            $lyrics =~ s/<.*?>//gs;

            return $lyrics;
        }

        return;
    }
  }
