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
;; Bootstrap Packages
;; ===================================================
(require 'packages)

;; ---------------------------------------------------
;; Appearance & Theme
;; ---------------------------------------------------
(require 'theme)         ; Use Atom One Dark Theme
(require 'editor)        ; Add .editorconfig
(require 'pkg-whichkey)  ; Display Key Bindings everywhere
(require 'pkg-neotree)   ; Use Neotree file explorer
(require 'pkg-company)   ; Use Company for autocompele everything
(require 'pkg-flycheck)  ; Use Flycheck for spell checking

;; ---------------------------------------------------
;; Version Control System
;; ---------------------------------------------------
(require 'pkg-magit)     ; Use Magit is an interface for Git
(require 'mode-git)      ; Use various git config files

;; ---------------------------------------------------
;; Languages and Frameworks
;; ---------------------------------------------------
(require 'lang-php)      ; use PHP mode
;; (require 'lang-cpp)
;; (require 'lang-csharp)
(require 'lang-lisp)     ; use Lisp mode
;; (require 'lang-java)
(require 'lang-yaml)     ; highlight YML files

(require 'fw-php)        ; use Tools for any PHP framewors

;; ---------------------------------------------------
;; Tools
;; ---------------------------------------------------
(require 'docker-integration)  ; provide support for Docker

;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

;;; init.el ends here
