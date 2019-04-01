;;; pkg-company.el --- Company for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Company for Emacs
;; Company is a text completion framework for Emacs.

;; @see http://company-mode.github.io

;;; Code:

;; use Company
(use-package company
    :custom
    (company-tooltip-limit 20)
    (company-idle-delay .15)
    (company-echo-delay 0)

    :config
    (setq company-begin-commands '(self-insert-command))

    (define-key company-active-map (kbd "C-n") #'company-select-next)
    (define-key company-active-map (kbd "C-p") #'company-select-previous))

(provide 'pkg-company)

;;; pkg-company.el ends here
