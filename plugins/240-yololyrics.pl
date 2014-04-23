#
## yololyrics.com support
#

{
 url_regex => qr{\byololyrics\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<div\h+class="data_content">(.*?)<div}is) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
   }
}
