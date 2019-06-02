;;; core-includes.el --- Core include path, custom dirs, constants -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2019 Oleksandr Andriiako <AlexNDR.mac@gmail.com>
;;
;; Author: Oleksandr Andriiako <AlexNDR.mac@gmail.com>
;; URL: https://github.com/AlexNDRmac/.emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:
;;
;; Include path, custom Directories and Contants.

;;; Code:

;;; ========================================
;;; Set up global Variables and Const
;;; ========================================

(defconst emacs-debug-mode
  (or (getenv "DEBUG") init-file-debug)
  "If non-nil, all Emacs will be verbose.
Set DEBUG=1 in the command line or use --debug-init to enable this.")

(defconst sys/linuxp
  (eq system-type 'gnu/linux)
  "Is it a GNU/Linux system?")

(defconst sys/macp
  (eq system-type 'darwin)
  "Is it a Mac system?")

(defconst sys/mac-x-p
  (and (display-graphic-p) sys/macp)
  "Is it a Mac system under X (GUI mode)?")

(defconst sys/linux-x-p
  (and (display-graphic-p) sys/linuxp)
  "Is it a GNU/Linux system under X (GUI mode)?")

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

;; Add nested Settings groups to the load path
(dolist (settings-group (directory-files user-settings-dir t "\\w+"))
  (when (file-directory-p settings-group)
    (add-to-list 'load-path settings-group)))

(provide 'core-includes)

;;; core-includes.el ends here
