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

;;some clipboard stuff
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(modify-coding-system-alist 'file ".txt'" 'utf-8)
(setq projectile-switch-project-action 'projectile-dired)
;;open projects file
(find-file "~/Documents/uni_research/Projects.org")
(setq browse-url-browser-function 'browse-url-chrome)
(eval-after-load 'projectile
                    '(define-key projectile-mode-map (kbd "C-c p a") (lambda () (interactive) (helm-ag))))

(eval-after-load 'evil
                    '(define-key projectile-mode-map (kbd "C-a") (lambda () (interactive) (evil-numbers/inc-at-pt 1 nil))))
(global-set-key (kbd "C-c C-j")  (lambda () (interactive) (org-journal-new-entry nil )))
