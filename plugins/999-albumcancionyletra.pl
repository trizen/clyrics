#
## albumcancionyletra.com support
#

{
 url_regex => qr{\balbumcancionyletra\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<div class="letra">(.*?)</div>}si) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
   }
}
