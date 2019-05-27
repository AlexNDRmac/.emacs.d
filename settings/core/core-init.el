;;; core-init.el --- Core init file. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Main settings for Emacs

;;; Code:

;;; Naming conventions:
;;
;;   my-...   public variables or non-interactive functions
;;   my--...  private anything (non-interactive), not safe for direct use
;;   my/...   an interactive function; safe for M-x or keybinding
;;   my//...  an interactive function for managing/maintaining GNU Emacs itself
;;   my|...   a hook function
;;   my*...   advising functions
;;   ...!     a macro or function that configures GNU Emacs
;;   =...     an interactive command that starts an app module
;;   +...     any of the above but part of a module, e.g. `+emacs-lisp|init-hook'

;; Use Definitions
(eval-when-compile
  (require 'core-includes
           (concat user-emacs-directory "settings/core/core-includes.el")))

; Include other Cores' Configurations
(require 'core-backup (concat user-emacs-directory "settings/core/core-backup.el"))
(require 'core-history (concat user-emacs-directory "settings/core/core-history.el"))

;;; ========================================
;;; Encoding
;;; ========================================

;; Use UTF-8
(when (fboundp 'set-charset-priority)
  (set-charset-priority 'unicode))

(prefer-coding-system 'utf-8)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

(setq locale-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8)

;;; ========================================
;;; Better Defaults
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

; make ibuffer default
;(defalias 'list-buffers 'ibuffer)

;; =======================================
;; General Settings
;; =======================================

;; Quiet Startup
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message nil)
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

;; Use `y` on `n` for confirmation, instead `yes` / `no`
(fset 'yes-or-no-p 'y-or-n-p)

;; Set bash as default shell
(setq shell-file-name "/bin/bash")

(provide 'core-init)
;;; core-init.el ends here
