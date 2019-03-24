;;; core.el --- Main init file. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and confugure Main settings for Emacs

;;; Code:

;;; ========================================
;;; Set up global Variables and Directories
;;; ========================================

(defvar user-emacs-dir (file-truename user-emacs-directory)
  "The path to this emacs.d directory.
The real path of this directory is found by chasing symbolic links
both at the level of the file and at the level of the directories
containing it, until no links are left at any level.")

(defvar user-cache-dir (concat user-emacs-dir ".cache/")
  "Directory for volatile storage.
Use this for files that change often, like cache files.")

;; Add Mac OS bin $PATH to Emacs directory list
(add-to-list 'exec-path "/usr/local/bin/")

;; =======================================
;; General Settings
;; =======================================

;; Enable line highlight mode everywhere
(global-hl-line-mode 1)

;; Disable Ring Bell
(setq ring-bell-function 'ignore)

;; Frame Title
(setq frame-title-format
      '("" invocation-name " Emacs - "
        (:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))


(provide 'core)
;;; core.el ends here