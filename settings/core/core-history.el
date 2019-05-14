;;; core-history.el --- Base Configuration for Emacs History -*- lexical-binding: t; -*-
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

;; Settings for History files, recentf, etc.

;;; Code:

(require 'recentf)
(recentf-mode 1)

(setq recentf-save-file (concat user-cache-dir "recentf")
        recentf-max-saved-items 50
        recentf-max-menu-items 25
        ;; disable recentf-cleanup on Emacs start, because it can cause
        ;; problems with remote files
        recentf-auto-cleanup 'never
        recentf-menu-title "Recent Files")

(add-to-list 'recentf-exclude ".cache")
(add-to-list 'recentf-exclude ".cask")

(provide 'core-history)

;;; core-history.el ends here
