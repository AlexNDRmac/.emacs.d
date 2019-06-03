;;; mode-git.el --- Git configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;;; Code:

;; It highlights changes and the type of them in opened files
(use-package git-gutter
  :config
  ;; use git-gutter for files in git repository.
  (global-git-gutter-mode +1)
  (custom-set-variables
   '(git-gutter:update-interval 2)
   '(git-gutter:modified-sign   "┃")
   '(git-gutter:added-sign      "┃")
   '(git-gutter:deleted-sign    "┃")
   '(git-gutter:hide-gutter     nil)))

(set-face-foreground 'git-gutter:modified "DeepSkyBlue3") ;; background color
(set-face-foreground 'git-gutter:added "SeaGreen4")
(set-face-foreground 'git-gutter:deleted "IndianRed3")

;; diff information is updated at hooks
(add-to-list 'git-gutter:update-hooks 'focus-in-hook)

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
(use-package yagist
  :commands yagist-list
  :init
  (setq yagist-encrypt-risky-config t
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
