;;; mode-git.el --- Git configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;;; Code:

;; It highlights changes and the type of them in opened files
(use-package git-gutter
  :config
  (global-git-gutter-mode +1)
  (custom-set-variables
   '(git-gutter:update-interval 2)
   '(git-gutter:modified-sign "*")
   '(git-gutter:added-sign "+")
   '(git-gutter:deleted-sign "-")
   '(git-gutter:hide-gutter nil)))

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

;; Support .gitignore files
(use-package gitignore-mode
  :mode (("\\.gitignore\\'"           . gitignore-mode)
         ("\\.dockerignore\\'"        . gitignore-mode)))

;; Support .gitattributes files
(use-package gitattributes-mode
  :mode (("\\.gitattributes\\'"       . gitattributes-mode)
         ("\\.git/info/attributes\\'" . gitattributes-mode)))

;; Support .gitconfig files
(use-package gitconfig-mode
  :mode (("\\.gitconfig\\'"           . gitconfig-mode)
         ("\\.git/config\\'"          . gitconfig-mode)
         ("\\.gitmodules\\'"          . gitconfig-mode)))

(provide 'mode-git)
;;; mode-git.el ends here