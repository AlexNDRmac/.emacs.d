;;; pkg-magit.el --- VCS configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Version Control System for Emacs
;; Magit is an interface to the version control system Git, implemented as an Emacs package.
;; Magit aspires to be a complete Git porcelain.

;;; Code:

(eval-when-compile
  (require 'core-includes
           (concat user-emacs-directory "settings/core/core-includes.el")))

;; Taking inspiration from prefix keys and prefix arguments,
;; Transient implements a similar abstraction involving a prefix command, infix arguments and suffix commands.
(use-package transient
  :config
  (setq transient-history-file (concat user-cache-dir "transient/history.el")
        transient-values-file  (concat user-cache-dir "transient/values.el")
        transient-levels-file  (concat user-cache-dir "transient/levels.el")))

;;; Magit
;;
;; For more see URL `https://magit.vc'
;;
;; Load Magit Package
(use-package magit
  :after transient
  :defer t
  :config
  ;; DWIM prompting when creating new branches.
    (setq magit-branch-read-upstream-first 'fallback)
  :bind
  ("C-x g" . magit-status))

;; Update git-gutter state after Stage/Unstage, etc.
(add-hook 'magit-post-refresh-hook #'git-gutter:update-all-windows)

(use-package magit-popup
  :demand t)

(provide 'pkg-magit)

;;; pkg-magit.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
