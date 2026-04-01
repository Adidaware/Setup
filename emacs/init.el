;;; init.el --- Emacs configuration
;;; Commentary:
;;; Configuration for bioinformatics work with auto-truncate for .bps and .vcf files
;;; Code:

;; Auto-truncate lines for .bps and .vcf files
(add-hook 'find-file-hook
  (lambda ()
    (when (string-match "\\.\\(bps\\|vcf\\)$" buffer-file-name)
      (toggle-truncate-lines 1))))

;; Optional: Add more Emacs customizations here
;; (setq-default line-spacing 0.2)
;; (setq-default tab-width 4)

(provide 'init)
;;; init.el ends here

