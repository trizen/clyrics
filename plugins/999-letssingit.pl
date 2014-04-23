#
## artists.letssingit.com support
#

{
 url_regex => qr{\bartists\.letssingit\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{\bid=lyrics\b.*?">(.*?)</DIV>}is) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
   }
}
