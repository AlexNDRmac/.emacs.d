;;; mode-git.el --- Git configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;;; Code:

;; It highlights changes and the type of them in opened files
;; @see https://github.com/dgutov/diff-hl
(use-package diff-hl
  :hook
  ((dired-mode . diff-hl-dired-mode)
   (after-init . global-diff-hl-mode)
   (vc-dir-mode . turn-on-diff-hl-mode)
   (magit-post-refresh . diff-hl-magit-post-refresh))
  :config
  (if (display-graphic-p)
      (diff-hl-flydiff-mode t)
    (diff-hl-margin-mode t)))

;; Provides a configured helm to generate `.gitignore` files using gitignore.io
(use-package helm-gitignore)

;; GitHub client library for Emacs
;; @see https://github.com/sigma/gh.el
(use-package gh)
;; Render markdown using the Github api
(use-package gh-md)

;; Emacs package to get the GitHub/Bitbucket/GitLab/... URL for a buffer location
;; @see https://github.com/sshaw/git-link
(use-package git-link)

;; Emacs integration for Github Codereview
(use-package github-review
  :init
  (setq github-review-fetch-top-level-and-review-comments t))

;; Use yagist for Gists
(use-package kaesar)
(use-package yagist
  :requires kaesar
  :commands yagist-list
  :init
  (add-hook 'prog-mode-hook #'yagist-global-minor-mode)
  (setq yagist-encrypt-risky-config t
        yagist-view-gist t
        yagist-git-config-with-includes t))

;; Support .gitignore files
(use-package gitignore-mode
  :mode "\\.gitignore\\'"
  :mode "\\.gitignore_global\\'"
  :mode "\\.dockerignore\\'")

;; Support .gitattributes files
(use-package gitattributes-mode
  :mode "\\.gitattributes\\'"
  :mode "\\.git/info/attributes\\'")

;; Support .gitconfig files
(use-package gitconfig-mode
  :mode "\\.gitconfig\\'"
  :mode "\\.git/config\\'"
  :mode "\\.gitmodules\\'")

(provide 'mode-git)
;;; mode-git.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:
