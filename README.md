clyrics
=======

An extensible lyrics fetcher, with daemon support for cmus and mocp.

* Main features include:
  - support for plugins
  - cmus and mocp daemon mode


```
usage: clyrics [options] [song name]

options:
        -m         : start as a daemon for moc player
        -c         : start as a daemon for cmus player
        -s <int>   : sleep duration between lyrics updates (default: 3)
        -P <dir>   : plugin directory (default: ~/.config/clyrics)

        -d         : activate the debug mode
        -v         : print version and exit
        -h         : print this message and exit

example:
        clyrics -m -s 1         # stars the mocp daemon
        clyrics not afraid      # prints the lyrics for "Eminem - Not Afraid"
```
