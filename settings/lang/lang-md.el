;;; lang-md.el --- Add support for Markdown to Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; Add support for the Markdown files.
;; Provide Markdown mode from Git for typsetting git comments for issues and pull requests.

;;; Code:

;; Markdown mode
;; @see `https://leanpub.com/markdown-mode/read`
(use-package markdown-mode
  :mode "/README$"
  :mode "\\.m\\(d\\|arkdown\\)$"
  :mode ("/README\\.md$" . gfm-mode)
  :config
  (setq markdown-command "cmark"
        markdown-enable-wiki-links t
        markdown-enable-math t
        markdown-italic-underscore t
        markdown-asymmetric-header t
        markdown-make-gfm-checkboxes-buttons t
        markdown-gfm-additional-languages '("sh")
        markdown-fontify-code-blocks-natively t
        markdown-hide-urls nil))

(use-package markdown-toc
    :commands markdown-toc-generate-toc)

(provide 'lang-md)

;;; lang-md.el ends here
