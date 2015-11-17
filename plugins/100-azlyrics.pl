#
## azlyrics.com support
#

{
 url_regex => qr/\bazlyrics\.com\b/,
 code      => sub {
     my ($content) = @_;

     if ($content =~ m{<span.+?id="cf_text_top".*?></span>.*?<div>(.*?)</div>}is) {
         my $lyrics = $1;
         $lyrics =~ s{<.*?>}{}sg;
         $lyrics =~ s/^\s+//;
         return decode_entities($lyrics);
     }

     return;
 }
}
