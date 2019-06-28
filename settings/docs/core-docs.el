;;; core-docs.el --- ElDoc configuration for Emacs -*- lexical-binding: t; -*-
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

;; Configuration for ElDoc

;;; Code:

(use-package eldoc
  :ensure nil
  :diminish (eldoc-mode . " Ⓔ")
  :config
  (setq eldoc-idle-delay 0.5
        eldoc-minor-mode-string ""))

;; A better *Help* buffer
(use-package helpful
  :bind (("C-c C-d" . helpful-at-point)))

(provide 'core-docs)

;;; core-docs.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
