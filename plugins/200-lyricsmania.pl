#
## lyricsmania.com support
#

{
 url_regex => qr{\blyricsmania\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<div\h+class="lyrics-body".*?</strong>\s*(.*?)</div>}si) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
   }
}
