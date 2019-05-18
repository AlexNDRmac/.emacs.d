;;; conf-dashboard.el --- Dashboard Configuration -*- lexical-binding: t; -*-
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

;; An extensible Emacs startup screen showing you what’s most important.

;;; Code:

(defun my/dashboard-banner ()
  "Set a dashboard banner including information on package initialization time and garbage collections."
  (setq dashboard-banner-logo-title
        (format "Emacs ready in %.2f seconds with %d garbage collections."
                (float-time (time-subtract after-init-time before-init-time)) gcs-done)))

(use-package dashboard
  :init
  (add-hook 'after-init-hook 'dashboard-refresh-buffer)
  (add-hook 'dashboard-mode-hook 'my/dashboard-banner)
  :config
  :custom (dashboard-startup-banner 'logo 1)
  :config (dashboard-setup-startup-hook))

(setq dashboard-items '((recents  . 20)
                        (bookmarks . 10)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))

(provide 'conf-dashboard)

;;; conf-dashboard.el ends here
