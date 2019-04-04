;;Temporary stuff goes in here;;
;;-------------------------------
(add-to-list 'load-path "~/.emacs.d/my-modules/el-supercollider/el")
(add-to-list 'load-path "~/.emacs.d/my-modules/org-reveal")
(require 'ox-reveal)
(setq org-reveal-root "")

(require 'sclang)

(require 'python)
(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython3")
   ( setenv "IPY_TEST_SIMPLE_PROMPT" "1"))

;;TODO eventually migrate to ~/newinit.org

(require 'package)
;;     smtpmail-smtp-service 587)
;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "<f6>") 'org-journal-new-entry)
;;lilypond mode
(add-to-list 'load-path "/usr/share/emacs/site-lisp/")

(require 'lilypond-mode)
(setq projectile-switch-project-action 'projectile-dired)
(global-set-key (kbd "C-c p A") 'helm-projectile-ag)
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

(global-set-key (kbd "C-c C-j")  (lambda () (interactive) (org-journal-new-entry nil )))
