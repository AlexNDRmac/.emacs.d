;;; lang-web.el --- Emacs web template support. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure Emacs for web-mode.

;;; Code:
(use-package web-mode
  :ensure t
  :mode (("\\.phtml\\'"      . web-mode)
         ("\\.tpl\\'"        . web-mode)
         ("\\.tpl\\.php\\'"  . web-mode)
         ("\\.blade\\.php\\'". web-mode)
         ("/\\(views\\|html\\|theme\\|templates\\)/.*\\.php\\'" . web-mode)
         ("\\.volt\\'"       . web-mode)
         ("\\.twig\\'"       . web-mode)
         ("\\.[agj]sp\\'"    . web-mode)
         ("\\.as[cp]x\\'"    . web-mode)
         ("\\.erb\\'"        . web-mode)
         ("\\.djhtml\\'"     . web-mode))
  :init
  ;; associate an engine
  (setq web-mode-engines-alist
        '(("php"   . "\\.phtml\\'")
          ("blade" . "\\.blade\\."))
        ; Indentation Level Settings
        web-mode-markup-indent-offset 4
        web-mode-code-indent-offset 4
        ; highlight FIXME, TODO.. in comments
        web-mode-enable-comment-interpolation t))

(provide 'lang-web)

;;; lang-web.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
