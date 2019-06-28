;;; theme.el --- All Theme and UI related setting. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Theme and UI for Emacs

;;; Code:

;; atom-one-dark-theme
(use-package atom-one-dark-theme
    :config
    (load-theme 'atom-one-dark t))

;; Use thin cursor instead of as fat as sausadge
(setq-default cursor-type 'bar)

;; Add more air to line spacing everywhere
(setq-default line-spacing 4)

(provide 'theme)

;;; theme.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
