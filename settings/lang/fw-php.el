;;; fw-php.el --- Tools for PHP frameworks for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure PHP Framework Tools for Emacs

;;; Code:

(require rx)

;; declare "^use" as begining of Imports
(defconst fw-php--imports-start-point
  (rx (group (and bol "use"))))

(defconst fw-php--imports-end-point
  (rx (or (and bol "use") (and bol (* space) eol))))

;; Optimize php import functions

;;;###autoload
(defun fw-php-optimize-imports-region (begin end)
  "Optimize PHP imports from region BEGIN to END points."
  (interactive "r")
  ;; code
)

;;;###autoload
(defun fw-php-optimize-imports-buffer ()
  "Optimize PHP imports from current buffer."
  (interactive)
  ;; code
)

(provide 'fw-php)

;;; fw-php.el ends here