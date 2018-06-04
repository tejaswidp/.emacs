;;pdf-tools
(pdf-tools-install)
(defun evil-bindings-pdf-tools ()
  "Simple evil key bindings for pdf-tools."
  (progn (local-set-key (kbd "j") 'pdf-view-next-line-or-next-page)
         (local-set-key (kbd "k") 'pdf-view-previous-line-or-previous-page)
         (local-set-key (kbd "J") 'pdf-view-next-page)
         (local-set-key (kbd "K") 'pdf-view-previous-page)
         (local-set-key (kbd "TAB") 'pdf-outline)
         (local-set-key (kbd "/") 'isearch-forward)))

;;(define-minor-mode pdf-evil-minor-mode
;;  "Evil minor mode for pdf tools"
;;    (progn (define-key (kbd "j") 'pdf-view-next-line-or-next-page)
;;         (define-key (kbd "k") 'pdf-view-previous-line-or-previous-page)
;;         (define-key (kbd "J") 'pdf-view-next-page)
;;         (define-key (kbd "K") 'pdf-view-previous-page)
;;         (define-key (kbd "TAB") 'pdf-outline)
;;         (define-key (kbd "/") 'isearch-forward)))
(add-hook 'pdf-tools-enabled-hook 'evil-bindings-pdf-tools)
(add-hook 'pdf-tools-enabled-hook 'pdf-tools-enable-minor-modes)
