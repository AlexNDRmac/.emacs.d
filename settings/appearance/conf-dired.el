;;; conf-dired.el --- Dired tune up Configuration -*- lexical-binding: t; -*-
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

;; Customization for Emacs Dired

;;; Code:
(defvar dired-mode-map)

;; Look up file contents in other window while browsing directory in Dired.
(use-package peep-dired
  :ensure t
  :bind (:map dired-mode-map ("P" . peep-dired))
  :config
  (setq peep-dired-cleanup-on-disable t
        peep-dired-cleanup-eagerly t
        peep-dired-enable-on-directories t
        peep-dired-ignored-extensions '("mkv" "iso" "mp4" "mov" "avi")))

;; Colorful file names in Dired buffers.
(use-package diredful
  :ensure t
  :config
  (diredful-mode 1))

;; Edit Filename At Point in an Emacs' dired buffer
(use-package dired-efap
  :ensure t
  :bind (:map dired-mode-map
              ([f2] . dired-efap)
              ([down-mouse-1] . dired-efap-click))
  :config
  (setq dired-efap-use-mouse t))

(use-package dired
  :ensure nil
  :init
  (setq dired-listing-switches "-alh"  ; show human readable sizes in dired
        directory-free-space-args "-h" ; show human readable free space
        dired-recursive-deletes 'always
        dired-recursive-copies 'always
        ))

(provide 'conf-dired)

;;; conf-dired.el ends here
