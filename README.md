clyrics
=======

An extensible lyrics fetcher, with daemon support for cmus and mocp.

### Features:
  - support for plugins
  - cmus, mocp and playerctl daemon mode

### Dependencies:

* [WWW::Mechanize](https://metacpan.org/release/WWW-Mechanize)
* [LWP::Protocol::https](https://metacpan.org/release/LWP-Protocol-https)

```
usage: clyrics [options] [song name]

options:
        -m         : start as a daemon for moc player
        -c         : start as a daemon for cmus player
        -p         : start as a daemon for playerctl media controller
        -k         : do not quit if player is not playing any song
        -s <int>   : sleep duration between lyrics updates (default: 1)
        -P <dir>   : plugin directory (default: ~/.config/clyrics)

        -d         : activate the debug mode
        -v         : print version and exit
        -h         : print this message and exit

example:
        clyrics -m -s 1             # stars the mocp daemon
        clyrics eminem not afraid   # prints the lyrics of "Eminem - Not Afraid"
```

### Availability:

AUR: https://aur.archlinux.org/packages/clyrics/
