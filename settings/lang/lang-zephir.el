;;; lang-zephir.el --- Zephir mode for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Zephir Language for Emacs

;;; Code:

(use-package zephir-mode
  :mode "\\.zep\\'"
  :hook ((zephir-mode . zephir-common-hook)
         (zephir-mode . subword-mode)
         (zephir-mode . yas-minor-mode)
         (zephir-mode . auto-fill-mode)
         (zephir-mode . zephir-common-hook)))

(provide 'lang-zephir)

;;; lang-zephir.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
