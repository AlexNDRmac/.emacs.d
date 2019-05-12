;;; init.el -- Initialization file. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to set up the packages sources and then call
;; an org-babel tangle in order to load a literate configuration.

;;; Code:

;; ==============================================================
;; Core Settings
;; ==============================================================
;; Base Configuration file used as Core Settings for Emacs
(require 'core (concat user-emacs-directory "settings/core/core"))
(require 'core-backup)   ; Use custom backup settings

;; Set up the customize file to its own separate file,
;; instead of saving customize settings in init.el.
(setq custom-file (concat user-local-dir "custom.el"))
(load custom-file t)

;; ===============================================================
;; Bootstrap Packages
;; ===============================================================
(require 'packages)

;; ---------------------------------------------------------------
;; Appearance & Theme
;; ---------------------------------------------------------------
(require 'theme)         ; Use Atom One Dark Theme
(require 'editor)        ; Add .editorconfig
(require 'workspaces)    ; Add windows/workspaces switching
(require 'modeline)      ; Add PowerLine
(require 'pkg-whichkey)  ; Display Key Bindings everywhere
(require 'pkg-neotree)   ; Use Neotree file explorer

(require 'pkg-company)   ; Use Company for autocompele everything
(require 'pkg-ivy)       ; Use Ivy completition backend
(require 'pkg-flycheck)  ; Use Flycheck for spell checking

;; ---------------------------------------------------------------
;; Version Control System
;; ---------------------------------------------------------------
(require 'pkg-magit)     ; Use Magit is an interface for Git
(require 'mode-git)      ; Use various git config files
(require 'pkg-projects)  ; Use Projects for VCS folders

;; ---------------------------------------------------------------
;; Languages and Frameworks
;; ---------------------------------------------------------------
(require 'lang-php)      ; use PHP mode
(require 'lang-web)      ; add support for web templates
;; (require 'lang-cpp)
;; (require 'lang-csharp)
(require 'lang-lisp)     ; use Lisp mode
;; (require 'lang-java)
(require 'lang-yaml)     ; highlight YML files
(require 'lang-md)       ; add Markdown support

(require 'fw-php)        ; use Tools for any PHP framewors

;; ---------------------------------------------------------------
;; Tools
;; ---------------------------------------------------------------
(require 'docker-integration)  ; provide support for Docker
(require 'shell-integration)   ; provide Shell configuration
(require 'snippets)            ; provide Snippets support

;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

;;; init.el ends here
