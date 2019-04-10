;;; lang-php.el --- PHP mode for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure PHP Language for Emacs

;; @see https://github.com/emacs-php/php-mode

;;; Code:

;; company completion source for php
;; @see `https://github.com/xcwen/ac-php'
(use-package company-php
  :after company
  :config
  (unless (executable-find "phpctags")
    (warn "company-php: phpctags isn't installed, auto-completion will be gimped"))
  (let ((my-cache-dir (concat user-cache-dir "ac-php/")))
    (setq ac-php-tags-path my-cache-dir)
    (unless (file-exists-p my-cache-dir)
      (make-directory my-cache-dir t))))

;; use PHP mode
(use-package php-mode
    :after company-php
    :mode "\\.php[ts354]?\\'"
    :mode "\\.inc\\'")

(add-hook 'php-mode-hook
          '(lambda ()
             ;; Enable auto-complete-mode
             (auto-complete-mode t)

               ;; Enable company-mode
             (require 'company-php)
               (company-mode t)

             ;; As an example (optional)
             (yas-global-mode 1)

             ;; To enable eldoc support (optional)
             (ac-php-core-eldoc-setup )

             ;; Jump to definition (optional)
             (define-key php-mode-map (kbd "C-]")
               'ac-php-find-symbol-at-point)

             ;; Return back (optional)
             (define-key php-mode-map (kbd "C-t")
                 'ac-php-location-stack-back))
           ;; PSR2
           'php-enable-psr2-coding-style
    )

(provide 'lang-php)

;;; lang-php.el ends here
