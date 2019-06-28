;;; pkg-ivy.el --- Ivy completition configuration for Emacs -*- lexical-binding: t; -*-
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

;; This file is used to Set up and Configure Ivy (Completitionbackend forGNU Emacs)

;;; Code:

(use-package ivy
  :diminish (ivy-mode . "")
  :defer 0.1
  :config
  (ivy-mode 1)
  (setq
   ;; Show count matches and show current match
   ivy-count-format "(%d/%d) "
   ;; Wrap around after the first and the last candidate
   ivy-wrap t
   ;; Number of lines for minibuffer
   ivy-height 12))

(with-eval-after-load 'ivy
  (add-to-list 'ivy-ignore-buffers "\\*Messages\\*")
  (add-to-list 'ivy-ignore-buffers "TAGS"))

(provide 'pkg-ivy)

;;; pkg-ivy.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
