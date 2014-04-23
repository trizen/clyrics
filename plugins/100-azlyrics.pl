#
## azlyrics.com support
#

{
 url_regex => qr/\bazlyrics\.com\b/,
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<!--\s*start of lyrics\s*-->(.*?)<!--\s*end of lyrics\s*-->}is) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
   }
}
