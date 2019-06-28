;;; lang-yaml.el --- Yaml mode for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure YML Language for Emacs

;;; Code:

;; provides syntax highlighting for YAML files.
(use-package yaml-mode
  :mode "\\.ya?ml\\'")

(provide 'lang-yaml)

;;; lang-yaml.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
