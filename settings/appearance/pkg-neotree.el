;;; pkg-neotree.el --- neotree is a tree layout file explorer for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure neotree for Emacs
;; @see https://github.com/jaypei/emacs-neotree

;;; Code:

;; use neotree
(use-package neotree
    :init
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)
        projectile-switch-project-action 'neotree-projectile-action
        neo-window-width 40
        neo-show-hidden-files t
        neo-smart-open t))

(global-set-key [f8] 'neotree-toggle)

(provide 'pkg-neotree)

;;; pkg-neotree.el ends here