#
## versuri.ro support
#

use strict;
use warnings;

scalar {
    site => 'versuri.ro',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<div id="pagecontent">.*?</script>(.*?)<!-- }si) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}sg;
            return $lyrics;
        }

        return;
    }
  }
