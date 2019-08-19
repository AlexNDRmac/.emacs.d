;;; lang-c-cpp.el --- C/C++/C# modes for GNU Emacs -*- lexical-binding: t; -*-
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
;;

;;; Code:

(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

(provide 'lang-c-cpp)

;;; lang-c-cpp.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
