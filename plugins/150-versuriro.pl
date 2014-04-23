#
## versuri.ro support
#

{
 url_regex => qr{\bversuri\.ro\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{</p><br\h*/>(.*?)<div}si) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return decode_entities($lyrics);
     }

     return;
   }
}
