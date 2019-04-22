;;; fw-php.el --- Tools for PHP frameworks for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure PHP Framework Tools for Emacs
;;
;; TODO
;; - Sorting Imports in alphabet order
;; - Remove unused imports
;; - Remove empty lines between imports
;; - Sorting imports using Scopes (visibility)

;;; Code:

(require 'rx)

;; declare "^use" as begining of Imports
(defconst fwphp--imports-begin-point-re
  (rx (group (and bol "use")))
  "Regexp used to determine BEGIN point of Import line.")

(defconst fwphp--imports-end-point-re
  (rx (or (and bol "use") (and bol (* space) eol)))
  "Regexp used for determine END point of Import line.")

(defun fwphp--search-imports-forward (&optional end)
  "Search first import line until reach END point."
  (save-excursion
    (goto-char (point-min))
    (and (re-search-forward fwphp--imports-begin-point-re end t)
         (match-beginning 1))))

(defun fwphp--search-imports-endline (begin)
  "Search latest import line starting from BEGIN point."
  (let (end)
    ;; Lets remember cursor position
    (save-excursion
      (goto-char begin)
      ;; move to begining of line
      (goto-char (line-beginning-position))
      (catch 'eof
        (while (re-search-forward fwphp--imports-end-point-re (line-end-position) t)
          ;; is it end point of buffer
          (when (eobp)
            (throw 'eof "End of file."))
          (setq end (line-end-position))
          (forward-line 1))))
    end))

;; Optimize php import functions

;;;###autoload
(defun fw-php-optimize-imports-region (begin end)
  "Optimize PHP imports from region BEGIN to END points."
  (interactive "r")
    ;; code
    (sort-lines nil begin end))

;;;###autoload
(defun fw-php-optimize-imports-buffer ()
  "Optimize PHP imports from current buffer."
  (interactive)
  ;; code
  (let* ((begin (fwphp--search-imports-forward))
         (end (and begin (fwphp--search-imports-endline begin))))
    (when (and begin end)
      (sort-lines nil begin end))))

(provide 'fw-php)

;;; fw-php.el ends here
