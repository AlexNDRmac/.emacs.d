;;; conf-shell.el --- Shell configuration for GNU Emacs. -*- lexical-binding: t; -*-
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

;; Shell / Bash  configuration for GNU Emacs.

;;; Code:

(eval-when-compile
  (require 'core-includes
           (concat user-emacs-directory "settings/core/core-includes.el")))

;; Set Shell execution command arguments
;; -l used to invoke login shells. It's required for reading `~/.profile` and `~/.bash_profile`
;; -c used to reading bash commands
(setq shell-command-switch "-lc")

;; Emacs Shell interactive
(use-package eshell
  :commands eshell-mode
  :init
  (setq eshell-directory-name (concat user-local-dir "/eshell")
        eshell-scroll-to-bottom-on-input 'all
        eshell-scroll-to-bottom-on-output 'all
        eshell-kill-processes-on-exit t)
  :config
  (use-package eshell-git-prompt
    :init
    (eshell-git-prompt-use-theme 'powerline)))

(provide 'conf-shell)

;;; conf-shell.el ends here
