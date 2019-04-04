;;; editor.el --- Editor and Code Style configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Editor and Code Style for Emacs

;;; Code:

;; Support `.editorconfig` files
(use-package editorconfig
  :config
  (editorconfig-mode 1))


;; ===================================================
;; Editor / Selected region
;; ===================================================

;; move line up
(defun move-line-up ()
    (interactive)
    (transpose-lines 1)
    (previous-line 2))
(global-set-key [M-S-up] 'move-line-up)

;; move line down
(defun move-line-down ()
    (interactive)
    (next-line 1)
    (transpose-lines 1)
    (previous-line 1))
(global-set-key [M-S-down] 'move-line-down)

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

;; ====================================================
;; Visual appearance
;; ====================================================

;; Delete Selected Region when typing instead of adding
(delete-selection-mode t)

;; Show Line Numbers
(setq-default display-line-numbers-type 'visual
              display-line-numbers-current-absolute t
              display-line-numbers-width            4
              display-line-numbers-widen            t)

(add-hook 'conf-mode-hook #'display-line-numbers-mode)
(add-hook 'text-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; Show Column/Line Number in `modeline` ex.: (55,20)
(column-number-mode t)
(line-number-mode t)

;; Enable line highlight mode everywhere
(global-hl-line-mode 1)


;; Highlight parentness when point matching symbol
(show-paren-mode 1)

;; ====================================================

(add-to-list 'initial-frame-alist '(font . "Menlo-12"))

(provide 'editor)

;;; editor.el ends here
