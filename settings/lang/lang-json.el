;;; lang-json.el --- JSON Configuration -*- lexical-binding: t; -*-
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

;; JSON Configuration for GNU Emacs

;;; Code:

(use-package json-mode
  :delight "J "
  :mode ("\\.json\\'" . json-mode))

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))

(use-package json-reformat
  :after json-mode
  :config
  (setq json-reformat:indent-width 2
        json-reformat:pretty-string? t))

(provide 'lang-json)

;;; lang-json.el ends here
