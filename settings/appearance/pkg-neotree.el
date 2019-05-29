;;; pkg-neotree.el --- neotree is a tree layout file explorer for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure neotree for Emacs
;; @see https://github.com/jaypei/emacs-neotree

;;; Code:

;; Use All-the-icons for Neotree
(use-package all-the-icons
  :defer 0.5)

;; use neotree
(use-package neotree
  :init
  (defvar projectile-switch-project-action)
  :config
  (setq neo-autorefresh nil
        neo-theme (if (display-graphic-p) 'icons 'arrow)
        neo-window-width 40
        neo-show-hidden-files t
        neo-smart-open nil
        neo-confirm-create-file #'off-p
        neo-confirm-create-directory #'off-p
        ;; Show information with a highlighting by color for file/directory name.
        neo-vc-edited-face '(:foreground "#E2C08D")    ; Light yellew
        neo-vc-added-face  '(:foreground "SeaGreen4")  ; Light green
        neo-vc-integration '(face)
        neo-window-fixed-size nil
        projectile-switch-project-action 'neotree-projectile-action))

(global-set-key [f8] 'neotree-toggle)

(provide 'pkg-neotree)

;;; pkg-neotree.el ends here
