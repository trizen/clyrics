#
## rapgenius.com support
#

{
 url_regex => qr{\brapgenius\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<div\s+class="lyrics".*?>\s*(.*?)</div>}si) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}gs;
         return $lyrics;
     }

     return;
   }
}
