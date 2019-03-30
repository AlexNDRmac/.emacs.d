;;; editor.el --- Editor and Code Style configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Editor and Code Style for Emacs

;;; Code:

;; Support `.editorconfig` files
(use-package editorconfig
  :config
  (editorconfig-mode 1))

(provide 'editor)

;;; editor.el ends here
