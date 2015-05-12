#
## songlyrics.com support
#

{
 url_regex => qr{\bsonglyrics\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{id="songLyricsDiv-outer".*?<p.*?>(.*?)</p>}si) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
 }
}
