#
## lyricstime.com support
#

{
 url_regex => qr{\blyricstime\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{id=["']songlyrics["'].*?>.*?<p>\s*(.*?)</p>}si) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
 }
}
