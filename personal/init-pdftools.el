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
         (local-set-key (kbd "C-o") 'interleave-open-notes-file-for-pdf)))

(defun pdf-tools-ex()
  (interactive)
  (progn (setq input-page (read-from-minibuffer ":" ))
         (pdf-view-goto-page (string-to-int input-page))))

;;TODO: use the above keys here, make it an evil-pdftools minor mode.
(defun pdf-tools-quit-ex()
  (keyboard-quit))
;;(define-minor-mode pdf-evil-minor-mode
;;  "Evil minor mode for pdf tools"
;;    (progn (define-key (kbd "j") 'pdf-view-next-line-or-next-page)
;;         (define-key (kbd "k") 'pdf-view-previous-line-or-previous-page)
;;         (define-key (kbd "J") 'pdf-view-next-page)
;;         (define-key (kbd "K") 'pdf-view-previous-page)
;;         (define-key (kbd "TAB") 'pdf-outline)
;;         (define-key (kbd "/") 'isearch-forward)))
(add-hook 'pdf-view-mode-hook 'evil-bindings-pdf-tools)
(add-hook 'pdf-view-mode-hook 'pdf-tools-enable-minor-modes)
;;(add-hook 'pdf-view-mode-hook 'interleave-open-notes-file-for-pdf )
