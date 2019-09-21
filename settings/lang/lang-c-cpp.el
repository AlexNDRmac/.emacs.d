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
;; Simple Compile command bundled with my Emacs
(defun my/compile-file-with-gcc ()
  "Compiles the file with gcc."
  (interactive)
  (compile
   (concat "gcc " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".out")))

(defun my/compile-file-with-cpp ()
  "Compiles the file with g++."
  (interactive)
  (compile
   (concat "g++ " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".o")))


(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

;; Major mode for C family languages
(use-package cc-mode)
;; google's c/c++ style for c-mode
(use-package google-c-style)

;; Autoformatter for code style
(use-package clang-format
  :after cc-mode
  :config
  (setq clang-format-style "google"))

(use-package flycheck-clang-analyzer
  :after flycheck
  :config (flycheck-clang-analyzer-setup))

;; Semantic -- The core	C++ editing
(use-package semantic
  :disabled t
  :config
  (global-semanticdb-minor-mode t)
  (global-semantic-idle-scheduler-mode t)
  (global-semantic-idle-summary-mode nil)
  (semantic-mode t))

(provide 'lang-c-cpp)

;;; lang-c-cpp.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
