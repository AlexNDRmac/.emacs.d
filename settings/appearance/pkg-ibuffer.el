;;; pkg-ibuffer.el --- Initial ibuffer configuration -*- lexical-binding: t; -*-
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

;; ibuffer Configuration for GNU Emacs

;;; Code:

(use-package ibuffer
  :commands ibuffer-find-file
  :bind ("C-x C-b" . ibuffer))

;; Group ibuffer's list by project root
(use-package ibuffer-projectile
  :functions all-the-icons-octicon ibuffer-do-sort-by-alphabetic
  :hook ((ibuffer . (lambda ()
                      (ibuffer-projectile-set-filter-groups)
                      (unless (eq ibuffer-sorting-mode 'alphabetic)
                        (ibuffer-do-sort-by-alphabetic)))))
  :config
  (setq ibuffer-projectile-prefix
        (if (display-graphic-p)
            (concat
             (all-the-icons-octicon "file-directory"
                                    :face ibuffer-filter-group-name-face
                                    :v-adjust -0.05
                                    :height 1.25)
             " ")
          "Project: ")))

(provide 'pkg-ibuffer)

;;; pkg-ibuffer.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
