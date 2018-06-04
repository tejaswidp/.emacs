(add-to-list 'load-path "~/.emacs.d/my-modules/el-supercollider/el")
(add-to-list 'load-path "~/.emacs.d/my-modules/org-reveal")
(require 'ox-reveal)
(setq org-reveal-root "")
(require 'sclang)

(setq python-python-command "/usr/bin/python3")
(require 'ob-python)

;;TODO eventually migrate to ~/newinit.org

(require 'evil)
(evil-mode 1)
(require 'package)
;;     smtpmail-smtp-service 587)
;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "<f6>") 'org-journal-new-entry)
;;lilypond mode
(add-to-list 'load-path "/usr/share/emacs/site-lisp/")

(require 'lilypond-mode)
(require 'org)
(require 'ob-core)
(require 'ob-emacs-lisp)
(add-hook 'org-mode-hook 'auto-fill-mode)
(plist-put org-format-latex-options :scale 1.5)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((dot . t)))
(add-hook 'text-mode-hook 'auto-fill-mode)

(setq projectile-switch-project-action 'projectile-dired)

(setq notmuch-search-oldest-first nil)

(ido-vertical-mode t)

(toggle-scroll-bar -1)

(setq prelude-whitespace nil)

(add-hook 'prog-mode-hook 'linum-mode)

(ranger-override-dired-mode t)

;;some clipboard stuff
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(setq browse-url-browser-function 'browse-url-chrome)
(modify-coding-system-alist 'file ".txt'" 'utf-8)
