;;; core.el --- Main init file. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and confugure Main settings for Emacs

;;; Code:

;;; ========================================
;;; Set up global Variables and Const
;;; ========================================

(defconst emacs-debug-mode (or (getenv "DEBUG") init-file-debug)
  "If non-nil, all Emacs will be verbose.
Set DEBUG=1 in the command line or use --debug-init to enable this.")


;;; ========================================
;;; Set up Directories
;;; ========================================

(defvar user-emacs-dir (file-truename user-emacs-directory)
  "The path to this emacs.d directory.
The real path of this directory is found by chasing symbolic links
both at the level of the file and at the level of the directories
containing it, until no links are left at any level.")

(defvar user-cache-dir (concat user-emacs-dir ".cache/")
  "Directory for volatile storage.
Use this for files that change often, like cache files.")

(defvar user-local-dir (concat user-emacs-dir ".user/")
  "Directory for User Specific files.
Use this directory for permanent storage or sharing.")

(defvar user-settings-dir (concat user-emacs-dir "settings/")
  "All Settings and Customizatons for Emacs should located here.
This path also using for Bootstrap Packages.")

;; Add Mac OS bin $PATH to Emacs directory list
(add-to-list 'exec-path "/usr/local/bin/")

;; Add Settings path to Emacs directory list
(add-to-list 'load-path user-settings-dir)


;;; ========================================
;;; Encoding
;;; ========================================

(when (fboundp 'set-charset-priority)
  (set-charset-priority 'unicode))

(prefer-coding-system 'utf-8)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

(setq locale-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8)


;;; ========================================
;;; Defaults
;;; ========================================
(setq-default
 ;; Debug on Error
 debug-on-error (and (not noninteractive) emacs-debug-mode)

 ;; History Settings
 history-length 500
 history-delete-duplicates t

 ;; Do not ask for confirmationwhen opening Symlinks
 vc-follow-symlinks t

 ;; Store all temp, cached, intermediate and very helpful files
 ;; to local common Dir
 tramp-auto-save-directory (concat user-cache-dir "tramp/"))

;; =======================================
;; General Settings
;; =======================================

;; Enable line highlight mode everywhere
(global-hl-line-mode 1)

;; Delete Selected Region when typing instead of adding
(delete-selection-mode t)

;; Disable Ring Bell
(setq ring-bell-function 'ignore)

;; Frame Title
(setq frame-title-format
      '("" invocation-name " Emacs - "
        (:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; Startup Window size
(add-to-list 'default-frame-alist '(height . 70))
(add-to-list 'default-frame-alist '(width  . 120))

(provide 'core)
;;; core.el ends here
