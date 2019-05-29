;;; lang-config.el --- Configuration for various configuration files -*- lexical-binding: t; -*-
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
;; Configuration files formats, like .env, ini, cnf, etc...

;;; Code:

(use-package dotenv-mode
  :mode "\\.env\\'"
  :mode "\\.env\\..*\\'")

(use-package ini-mode
  :mode "\\.ini\\'")

(use-package ssh-config-mode
  :mode (("/\\.ssh/config\\'"   . ssh-config-mode)
         ("/sshd?_config\\'"    . ssh-config-mode)
         ("/known_hosts\\'"     . ssh-known-hosts-mode)
         ("/authorized_keys\\'" . ssh-authorized-keys-mode))
  :hook
  (ssh-config-mode . turn-on-font-lock))

(use-package nginx-mode
  :mode (("/nginx/sites-\\(?:available\\|enabled\\)/" . nginx-mode)
         ("nginx.conf" . nginx-mode)))

(add-to-list 'auto-mode-alist
             '("/config\\.\\(ac\\|in\\|m4\\)\\'" . autoconf-mode))

(provide 'lang-config)

;;; lang-config.el ends here
