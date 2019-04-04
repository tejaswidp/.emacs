;; for org-mind-maps
(require 'ox)
(require 'ox-org)
(require 'org-macs)
(setq load-path (cons "/home/tejaswidp/.emacs.d/elpa/org-mind-map-20171206.645/" load-path))
(require 'org-mind-map)
(setq-default org-display-custom-times t)
(setq org-time-stamp-custom-formats '("<%b %e %Y>" . "<%b %e %Y %H:%M>"))

(evil-set-initial-state 'calendar-mode 'emacs)
(global-set-key (kbd "C-c C-j") 'org-journal-new-entry)

;;babel
(require 'ob-python)
;;
(require 'org)
(require 'ob-core)
(require 'ob-emacs-lisp)
(add-hook 'org-mode-hook 'auto-fill-mode)
(plist-put org-format-latex-options :scale 1.5)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((dot . t)))
(add-hook 'text-mode-hook 'auto-fill-mode)
(eval-after-load "ox-latex"

  ;; update the list of LaTeX classes and associated header (encoding, etc.)
  ;; and structure
  '(add-to-list 'org-latex-classes
                `("beamer"
                  ,(concat "\\documentclass[presentation]{beamer}\n"
                           "[DEFAULT-PACKAGES]"
                           "[PACKAGES]"
                           "[EXTRA]\n")
                  ("\\section{%s}" . "\\section*{%s}")
                  ("\\subsection{%s}" . "\\subsection*{%s}")
                  ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))))
; for beamer
;(require 'ox-latex)
;(add-to-list 'org-latex-classes
;             '("beamer"
;               "\\documentclass\[presentation\]\{beamer\}"
;               ("\\section\{%s\}" . "\\section*\{%s\}")
;               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
;               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))
