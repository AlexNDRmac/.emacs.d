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
        neo-smart-open t
        ;; Show information with a highlighting by color for file/directory name.
        neo-vc-integration '(face)
        neo-vc-edited-face '(:foreground "#E2C08D")    ; Light yellew
        neo-vc-added-face  '(:foreground "SeaGreen4")  ; Light green
        ))

(global-set-key [f8] 'neotree-toggle)

(provide 'pkg-neotree)

;;; pkg-neotree.el ends here
