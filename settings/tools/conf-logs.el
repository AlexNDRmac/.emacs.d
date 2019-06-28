;;; conf-logs.el --- Configuration for Logs viewer -*- lexical-binding: t; -*-
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
;; Configuration for Log viewer, log-modes

;;; Code:

(use-package logview
  :ensure t
  :mode ("\\.log\\'" . logview-mode)
  :hook (logview-mode . hl-line-mode)
  :config
  ;; wildfly submode
  (add-to-list 'logview-additional-level-mappings
               '("WILDFLY"
                 (error "ERROR")
                 (warning "WARN" "WARNING")
                 (information "INFO")
                 (debug "DEBUG" "FINE")
                 (trace "TRACE" "FINER")))
  (add-to-list 'logview-additional-submodes
               '("Wildfly"
                 (format . "TIMESTAMP LEVEL [NAME] (THREAD)")
                 (levels . "WILDFLY"))))

(provide 'conf-logs)

;;; conf-logs.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
