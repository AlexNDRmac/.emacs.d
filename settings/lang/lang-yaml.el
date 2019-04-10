;;; lang-yaml.el --- Yaml mode for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure YML Language for Emacs

;;; Code:

;; provides syntax highlighting for YAML files.
(setq yaml-packages '(company flycheck yaml-mode))

(use-package yaml-mode
  :mode "\\.ya?ml\\'"
  :config
    (add-hook 'yaml-mode-hook 
        '(lambda ()
            (define-key yaml-mode-map "\C-m" 'newline-and-indent))))

(provide 'lang-yaml)

;;; lang-yaml.el ends here