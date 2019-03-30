;;; init.el -- Initialization file. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to set up the packages sources and then call
;; an org-babel tangle in order to load a literate configuration.

;;; Code:

;; Base Configuration file used as Core Settings for Emacs
(require 'core (concat user-emacs-directory "settings/core"))

;; Set up the customize file to its own separate file,
;; instead of saving customize settings in init.el.
(setq custom-file (concat user-local-dir "custom.el"))
(load custom-file t)

;; ===================================================
;; Bootstrap Package
;; ===================================================
(require 'packages)
(require 'theme)         ; Set up Doom Theme

;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

;;; Personal Layer:
(org-babel-load-file
  (expand-file-name "settings.org" user-emacs-directory))

;;; init.el ends here
