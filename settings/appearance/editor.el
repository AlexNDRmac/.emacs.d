;;; editor.el --- Editor and Code Style configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Editor and Code Style for Emacs

;;; Code:

(eval-when-compile
  (require 'core-includes
           (concat user-emacs-directory "settings/core/core-includes.el")))

;; Support `.editorconfig` files
;; If you use global `.editorconfig` file, you should remove
;; `indent_size` from general rule
;; ex.:
;;     [*]
;;     charset                  = utf-8
;;     end_of_line              = lf
;;     insert_final_newline     = true
;;     indent_style             = space
;;     # indent_size              = 4
(use-package editorconfig
    :diminish editorconfig-mode
    :config
    (editorconfig-mode 1))

(setq indent-tabs-mode nil)   ;; don't use tabs to indent

;; Newline at end of file
(setq require-final-newline t)

;; ===================================================
;; Editor / Selected region
;; ===================================================

;; Easily move text up and down
;; @see https://github.com/emacsfodder/move-text
(use-package move-text)
(move-text-default-bindings)

;; duplicate line
(defun duplicate-line()
    (interactive)
    (move-beginning-of-line 1)
    (kill-line)
    (yank)
    (open-line 1)
    (next-line 1)
    (yank))

(global-unset-key (kbd "C-x C-d"))
(global-set-key (kbd "C-x C-d") 'duplicate-line)

;; Easily comment lines/blocks
(use-package evil-commentary
    :config
    (evil-commentary-mode))

;; ====================================================
;; Visual appearance
;; ====================================================

;; Delete Selected Region when typing instead of adding
(delete-selection-mode t)

;; Show Line Numbers
(setq-default display-line-numbers-type t
              display-line-numbers-width 4)

(add-hook 'conf-mode-hook #'display-line-numbers-mode)
(add-hook 'text-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; Show Column/Line Number in `modeline` ex.: (55,20)
;; (column-number-modeq t)
(line-number-mode t)

;; Enable line highlight mode everywhere
(global-hl-line-mode 1)

;; Highlight parentness when point matching symbol
(show-paren-mode 1)

;; ====================================================
;; Behavior settings
;; ====================================================
(setq auto-save-default nil)          ; Disable auto save
(setq delete-by-moving-to-trash t)    ; Deleting files go to OS's trash folder
(setq make-backup-files nil)          ; Forbide to make backup files
(setq auto-save-default nil)          ; Disable auto save

;; Automatically reload files was modified by external program
(use-package autorevert
  :ensure nil
  :diminish
  :hook (after-init . global-auto-revert-mode))

;;; ====================================================
;; Font setiings
;; ====================================================
;; Please, use Monospaced font with programming ligatures
;; ex.: Fira Code, SourceCode Pro, DejaVue Sans Code, Monoid...
(add-to-list 'initial-frame-alist '(font . "Fira Code-12"))

(use-package unicode-fonts)

;; nice fonts in OS X
(setq mac-allow-anti-aliasing t)

;; ====================================================
;; Selection setiings
;; ====================================================

;; Use Multiple Cursor for Selection mode
(use-package multiple-cursors
  :bind (("C-S-c C-S-c"   . mc/edit-lines)
         ("C->"           . mc/mark-next-like-this)
         ("C-<"           . mc/mark-previous-like-this)
         ("C-c C-<"       . mc/mark-all-like-this)
         ("C-M->"         . mc/skip-to-next-like-this)
         ("C-M-<"         . mc/skip-to-previous-like-this)
         ("s-<mouse-1>"   . mc/add-cursor-on-click)
         ("C-S-<mouse-1>" . mc/add-cursor-on-click))
  :config
  (setq mc/list-file (concat user-cache-dir ".mc-lists.el")))

(provide 'editor)
;;; editor.el ends here
