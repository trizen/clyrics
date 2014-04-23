#
## lyrics.wikia.com support
#

{
 url_regex => qr{\blyrics\.wikia\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<div\h+class='lyricbox'.*?</div>(.*?)<!--}is) {
         my $lyrics = $1;
         $lyrics =~ s{<br\h*/?>}{\n}gi;
         return decode_entities($lyrics);
     }

     return;
   }
}
