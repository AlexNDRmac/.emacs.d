;;; lang-js.el --- JavaScript Configuration -*- lexical-binding: t; -*-
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

;; Settings for JavaScript lang

;;; Code:

;; Enable JS mode
(use-package js2-mode
  :mode (("\\.js$"    . js2-mode)
         ("\\.es6\\'" . js2-mode)
         ("\\.ejs\\'" . js2-mode)))

(provide 'lang-js)

;;; lang-js.el ends here
