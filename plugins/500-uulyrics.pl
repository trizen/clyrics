#
## uulyrics.com support
#

{
 url_regex => qr{\buulyrics\.com\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<br\h*/?>\s+<br\h*/?>\s+</div>\s+(.*?)<div}si) {
         my $lyrics = $1;
         $lyrics =~ /\n/ || $lyrics =~ s{<br\h*/?>}{\n}ig;
         $lyrics =~ s{<.*?>}{}sg;
         return $lyrics;
     }

     return;
   }
}
