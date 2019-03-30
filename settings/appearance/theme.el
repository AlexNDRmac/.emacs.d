;;; theme.el --- All Theme and UI related setting. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Theme and UI for Emacs

;;; Code:

;; use Doom Theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

(provide 'theme)

;;; theme.el ends here
