;;; snippets.el --- Provide Snippets configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; YASnippet is a template system for Emacs.
;; It allows you to type an abbreviation and automatically expand it
;; into function templates.

;;; Code:

(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (setq yas-verbosity (if emacs-debug-mode 3 0)
        yas-snippet-dirs (list (concat user-emacs-dir "snippets"))
        yas-indent-line 'fixed)
  (yas-global-mode))

(provide 'snippets)

;;; snippets.el ends here
