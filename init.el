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
(require 'core-init (concat user-emacs-directory "settings/core/core-init"))

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
(require 'conf-ui)       ; Visual (UI) configuration
(require 'theme)         ; Use Atom One Dark Theme
(require 'editor)        ; Add .editorconfig
(require 'conf-dired)    ; Use powered Dired configuration
(require 'workspaces)    ; Add windows/workspaces switching
(require 'conf-dashboard); Add Dashboard configuration
(require 'modeline)      ; Add PowerLine
(require 'pkg-whichkey)  ; Display Key Bindings everywhere
(require 'pkg-neotree)   ; Use Neotree file explorer
(require 'pkg-ibuffer)   ; ibuffer configuration

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
(require 'lang-js)       ; use js-mode with configuration
;; (require 'lang-cpp)
;; (require 'lang-csharp)
(require 'lang-lisp)     ; use Lisp mode
;; (require 'lang-java)
(require 'lang-yaml)     ; highlight YML files
(require 'lang-json)     ; add support for JSON format
(require 'lang-md)       ; add Markdown support
(require 'lang-config)   ; add support for various config langs

(require 'fw-php)        ; use Tools for any PHP framewors

;; ---------------------------------------------------------------
;; Tools
;; ---------------------------------------------------------------
(require 'docker-integration)  ; provide support for Docker
(require 'shell-integration)   ; provide Shell configuration
(require 'snippets)            ; provide Snippets support

;; ---------------------------------------------------------------
;; Documentation and Manuals
;; ---------------------------------------------------------------
(require 'core-docs)           ; Use ElDoc configuration

;;; init.el ends here
