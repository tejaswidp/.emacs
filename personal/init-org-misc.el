;; for org-mind-maps
(require 'ox)
(require 'ox-org)
(require 'org-macs)
(setq load-path (cons "/home/tejaswidp/.emacs.d/elpa/org-mind-map-20171206.645/" load-path))
(require 'org-mind-map)
(setq-default org-display-custom-times t)
(setq org-time-stamp-custom-formats '("<%b %e %Y>" . "<%b %e %Y %H:%M>"))
