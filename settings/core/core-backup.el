;;; core-backup.el --- BackUP Configuration for Emacs -*- lexical-binding: t; -*-
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

;; Backup Configuration file for GNU Emacs

;;; Code:

;; Write all Backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backup files even in version controlled directories
(setq vc-make-backup-files t)

;; Delete excess backup versions silently
(setq delete-old-versions t)

(provide 'core-backup)

;;; core-backup.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
