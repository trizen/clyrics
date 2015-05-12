#
## metrolyrics.com support
#

{
 url_regex => qr{\bmetrolyrics\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<p\s+class=['"]verse['"]>(.*?)</div>}si) {
         my $lyrics = $1;
         $lyrics =~ s{<p\s+class=["']verse["']>}{\n\n}gi;
         $lyrics =~ s{<.*?>}{}sg;
         return if unpack('A*', $lyrics) eq '';
         return decode_entities($lyrics);
     }

     return;
   }
}
