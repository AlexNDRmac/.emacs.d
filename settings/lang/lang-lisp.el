;;; lang-lisp.el --- LISP mode for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Lisp Language for Emacs

;;; Code:

;; Define modes for Autocomplete
(defconst my|lisp-modes
  '(emacs-lisp-mode-hook
    lisp-interaction-mode-hook
    ielm-mode-hook)
  "Enable Autocomplete for these modes.")

(defun remove-elc-on-save ()
  "If you're saving an elisp file, it means that .elc is no longer valid."
  (make-local-variable 'after-save-hook)
  (add-hook 'after-save-hook
            (lambda ()
              (if (file-exists-p (concat buffer-file-name "c"))
                  (delete-file (concat buffer-file-name "c"))))))

;; provides Lisp mode.
(use-package elisp-mode
  ;; built-in package, do not ensure loading
  :ensure nil
  :init
  (dolist (hook my|lisp-modes)
    (add-hook hook #'company-mode)
    (add-hook 'emacs-lisp-mode-hook 'remove-elc-on-save))
  :bind
  (:map emacs-lisp-mode-map
        ("C-c C-b" . #'eval-buffer)))

(provide 'lang-lisp)

;;; lang-lisp.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
