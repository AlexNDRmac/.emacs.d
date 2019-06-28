;;; snippets.el --- Provide Snippets configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; YASnippet is a template system for Emacs.
;; It allows you to type an abbreviation and automatically expand it
;; into function templates.

;;; Code:

(eval-when-compile
  (require 'core-includes
           (concat user-emacs-directory "settings/core/core-includes.el")))

(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (setq yas-verbosity (if emacs-debug-mode 3 0)
        yas-snippet-dirs (list (concat user-emacs-dir "snippets"))
        yas-indent-line 'fixed)
  (yas-global-mode))

(provide 'snippets)

;;; snippets.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
