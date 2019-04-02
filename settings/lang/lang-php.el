;;; lang-php.el --- PHP mode for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure PHP Language for Emacs

;; @see https://github.com/emacs-php/php-mode

;;; Code:

;; use PHP mode
(use-package php-mode
    :mode "\\.php[ts354]?\\'")

(add-hook 'php-mode-hook
          '(lambda ()
             ;; Enable auto-complete-mode
             (auto-complete-mode t)

             (require 'ac-php)
             (setq ac-sources '(ac-source-php))

             ;; As an example (optional)
             (yas-global-mode 1)

             ;; To enable eldoc support (optional)
             (ac-php-core-eldoc-setup )

             ;; Jump to definition (optional)
             (define-key php-mode-map (kbd "C-]")
               'ac-php-find-symbol-at-point)

             ;; Return back (optional)
             (define-key php-mode-map (kbd "C-t")
               'ac-php-location-stack-back)))

(provide 'lang-php)

;;; lang-php.el ends here
