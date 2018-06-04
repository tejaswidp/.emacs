(require 'prelude-erc)
(setq my-fav-irc '("irc.freenode.net" 
                   "irc.oftc.net"
                   "irc.mozilla.org" 
                   "irc.gnome.org"
                   "irc.rizon.net"
                   "irc.atw-inter.net"))
(setq erc-autojoin-channels-alist 
      '(("irc.freenode.net" "#emacs" "#python" "#programming") 
        ("irc.rizon.net" "#/g/dpt" "#/g/sicp" "#etc")
        ("irc.ircnet.net" "#demoscene" "#revision")))