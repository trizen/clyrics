#
## letras.com support
#

{
 url_regex => qr{\letras\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<div id="div_letra".*?><p>(.*?)</div>}si) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
   }
}
