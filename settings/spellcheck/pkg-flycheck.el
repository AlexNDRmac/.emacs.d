;;; pkg-flycheck.el --- Syntax checker. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; On the fly syntax checking for GNU Emacs
;; @see `https://www.flycheck.org/`

;;; Code:

;; Flycheck
(use-package flycheck
    :init
    (global-flycheck-mode)

    (add-hook 'after-init-hook #'global-flycheck-mode))

;; An Emacs minor-mode for Flycheck which colors the mode line
;; according to the Flycheck state of the current buffer.
(use-package flycheck-color-mode-line)

(with-eval-after-load 'flycheck
    (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(provide 'pkg-flycheck)

;;; pkg-flycheck.el ends here
