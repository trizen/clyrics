#
## versuri.ro support
#

{
 url_regex => qr{\bversuri\.ro\b},
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<div id="pagecontent">.*?</script>(.*?)<!-- }si) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         return decode_entities($lyrics);
     }

     return;
 }
}
