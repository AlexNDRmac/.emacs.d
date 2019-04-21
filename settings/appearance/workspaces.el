;;; workspaces.el --- Window & workspaces Configuration. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Window & workspaces for Emacs

;;; Code:

;; Winner  modeallows you easily switching back/forward between Window
(use-package winner
  :config
  (winner-mode t)
  :bind (("M-s-<left>" . winner-undo)
         ("M-s-<right>" . winner-redo)))

(provide 'workspaces)

;;; workspaces.el ends here
