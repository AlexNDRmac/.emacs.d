;;; pkg-projects.el --- Projects configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; Project management based on version control repositories.

;;; Code:

(eval-when-compile
  (require 'core-includes
           (concat user-emacs-directory "settings/core/core-includes.el")))

;; Use projects
(use-package projectile
  :init
  (setq
    projectile-completion-system 'ivy
    ;; Store bookmark file into .cache dir
    projectile-known-projects-file (concat user-cache-dir "projectile-bookmarks.eld")
    projectile-cache-file (concat user-cache-dir "projectile.cache")
    ;; Enable Cache
    projectile-enable-caching t
    ;; Ignores
    projectile-globally-ignored-files '(".DS_Store" "Icon" "TAGS")
    projectile-globally-ignored-file-suffixes
        '(".elc" ".pyc" ".o" ".lo" ".la" ".out" ".sock"))
  :config
  (projectile-mode +1))

(provide 'pkg-projects)

;;; pkg-projects.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
