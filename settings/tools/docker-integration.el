;;; docker-integration.el --- Docker configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; Dockerfile is a text document that contains all the commands
;; a user could call on the command line to assemble an image

;;; Code:

;; Use docker
(use-package dockerfile-mode
  :mode "\\Dockerfile\\'")

(use-package docker-compose-mode
  :mode "docker-compose[^/]*\\.yml\\'")

(provide 'docker-integration)

;;; docker-integration.el ends here