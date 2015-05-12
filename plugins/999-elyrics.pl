#
## elyrics.net support
#

{
 url_regex => qr{\belyrics\.net\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<div id='loading'>.*?</div>(.*?)<p><em>}is) {
         my $lyrics = $1;
         $lyrics =~ s{<br\h*/?>}{\n}gi;
         return $lyrics;
     }

     return;
   }
}
