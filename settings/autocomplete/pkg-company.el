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
     company-tooltip-limit 9
     company-echo-delay 0
     company-idle-delay .15
     company-minimum-prefix-length 3
     company-show-numbers t
     )))

;; Bind Keys for Company
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  (define-key company-active-map (kbd "SPC") #'company-abort))

;; Show Help modals with Company-Bix
(use-package company-box
  :if (display-graphic-p)
  :after all-the-icons
  :diminish
  :hook (company-mode . company-box-mode)
  :config
  (setq company-box-show-single-candidate t
        company-box-backends-colors nil
        company-box-max-candidates 50
        company-box-icons-alist 'company-box-icons-all-the-icons

        company-box-icons-elisp
        (list
         (concat (all-the-icons-material "functions") " ")
         (concat (all-the-icons-material "check_circle") " ")
         (concat (all-the-icons-material "stars") " ")
         (concat (all-the-icons-material "format_paint") " "))

        company-box-icons-unknown
        (concat (all-the-icons-material "find_in_page") " ")))

(provide 'pkg-company)

;;; pkg-company.el ends here
