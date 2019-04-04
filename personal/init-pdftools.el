;;pdf-tools
(pdf-tools-install)
(defun evil-bindings-pdf-tools ()
  "Simple evil key bindings for pdf-tools."
  (progn (local-set-key (kbd "j") 'pdf-view-next-line-or-next-page)
         (local-set-key (kbd "k") 'pdf-view-previous-line-or-previous-page)
         (local-set-key (kbd "J") 'pdf-view-next-page)
         (local-set-key (kbd "K") 'pdf-view-previous-page)
         (local-set-key (kbd "TAB") 'pdf-outline)
         (local-set-key (kbd "/") 'isearch-forward)
         (local-set-key (kbd "a") 'pdf-view-fit-page-to-window)
         (local-set-key (kbd "s") 'pdf-view-fit-width-to-window)
         (local-set-key (kbd ":") 'pdf-tools-ex)
         (local-set-key (kbd "M-x") 'smex)
         (local-set-key (kbd "C-o") 'interleave-open-notes-file-for-pdf)
         (local-set-key (kbd "G") 'pdf-view-last-page)
         (local-unset-key (kbd "g"))
         (local-set-key (kbd "gg") 'pdf-view-first-page)))

(defun pdf-tools-ex()
  (interactive)
  (progn (setq input-page (read-from-minibuffer ":" ))
         (pdf-view-goto-page (string-to-int input-page))))

(defun pdf-tools-quit-ex()
  (keyboard-quit))

;;get interleave pdf buffer and set its width
(defun set-interleave-widths()
  (let* ((pdf-window (get-buffer-window interleave-pdf-buffer)))
    (progn (select-window pdf-window)
           (enlarge-window-horizontally 35))))

(add-hook 'pdf-view-mode-hook 'evil-bindings-pdf-tools)
(add-hook 'pdf-view-mode-hook 'pdf-tools-enable-minor-modes)
(add-hook 'interleave-mode-hook 'set-interleave-widths )



;;TODO: create a minor mode with a keymap
;;(define-minor-mode pdf-evil-minor-mode
;;  "Evil minor mode for pdf tools"
;;    (progn (define-key (kbd "j") 'pdf-view-next-line-or-next-page)
;;         (define-key (kbd "k") 'pdf-view-previous-line-or-previous-page)
;;         (define-key (kbd "J") 'pdf-view-next-page)
;;         (define-key (kbd "K") 'pdf-view-previous-page)
;;         (define-key (kbd "TAB") 'pdf-outline)
;;         (define-key (kbd "/") 'isearch-forward)))
