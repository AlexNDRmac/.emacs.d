;;; workspaces.el --- Window & workspaces Configuration. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Window & workspaces for Emacs

;;; Code:

;; Winner mode allows you easily switching back/forward between Window
(use-package winner
  :config
  (winner-mode t)
  :bind (("M-s-<left>"  . winner-undo)
         ("M-s-<right>" . winner-redo)))

;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

;; save/restore opened files and windows config
(use-package desktop
  :config
  (setq desktop-dirname user-cache-dir
        desktop-path (list user-cache-dir)
        desktop-missing-file-warning nil
        desktop-load-locked-desktop t
        desktop-save t
        desktop-save-mode t))
;; (desktop-read)

(provide 'workspaces)

;;; workspaces.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
