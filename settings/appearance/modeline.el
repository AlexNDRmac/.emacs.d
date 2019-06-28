;;; modeline.el --- Modeline configuration for Emacs -*- lexical-binding: t; -*-
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

;; This file is to Set up and Configure Modeline for Emacs.

;;; Code:

;; Use PowerLine
;; @see http://github.com/milkypostman/powerline/
(use-package powerline)
(powerline-default-theme)

(provide 'modeline)

;;; modeline.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
