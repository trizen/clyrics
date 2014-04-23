#
## releaselyrics.com support
#

{
 url_regex => qr{\breleaselyrics\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{class="content-lyrics".*?>(.*?)</div>}is) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
   }
}
