;;; lang-php.el --- PHP mode for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure PHP Language for Emacs

;; @see https://github.com/emacs-php/php-mode

;;; Code:

(eval-when-compile
  (require 'core-includes
           (concat user-emacs-directory "settings/core/core-includes.el")))

;;; #ifndef
(defvar flycheck-phpcs-standard)
(defvar company-backends)
(defvar php-mode-map)
;;; #endif

(defun init/php-mode-hook()
  "Configure PHP mode."
  (company-mode t) ; Enable Company
  (require 'company-php)
  (ac-php-core-eldoc-setup)

  (make-local-variable 'company-backends)
  (add-to-list 'company-backends '(company-ac-php-backend
                                   company-capf
                                   company-files
                                   company-dabbrev-code))

  ;; Jump to definition (optional)
  (define-key php-mode-map (kbd "M-]")
    'ac-php-find-symbol-at-point)

  ;; Return back (optional)
  (define-key php-mode-map (kbd "M-[")
    'ac-php-location-stack-back)
  ;; PSR2
  'php-enable-psr2-coding-style)


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
    :mode "\\.inc\\'"
    :init
    (add-hook 'php-mode-hook #'init/php-mode-hook)
    (setq flycheck-phpcs-standard "PSR2"))


;;; Static Analyzers
(use-package phan)

;;; Debuggers
(use-package geben
  :defer t)

;;; Unit Testing
(use-package phpunit
  :defer t)

(provide 'lang-php)

;;; lang-php.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
