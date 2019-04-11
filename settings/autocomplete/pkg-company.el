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
    :defer t
    :init
    (progn
        (setq
            company-tooltip-align-annotations t
            company-tooltip-limit 20
            company-echo-delay 0
            company-idle-delay .15
            company-show-numbers t
            )))

;; Bind Keys for Company
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  (define-key company-active-map (kbd "SPC") #'company-abort))

;; Use Help
(use-package company-quickhelp
  :if (display-graphic-p)
  :commands company-quickhelp-manual-begin
  :init
  (progn
    (use-package pos-tip
      :defer t
      :pin melpa)

    (with-eval-after-load 'company
      (setq company-frontends
            (delq 'company-echo-metadata-frontend company-frontends)
            company-quickhelp-use-propertized-text t
            company-quickhelp-max-lines 10
            company-quickhelp-delay 0.3)
      (company-quickhelp-mode)
    )))

(provide 'pkg-company)

;;; pkg-company.el ends here
