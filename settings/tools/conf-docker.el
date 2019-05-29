;;; conf-docker.el --- Docker configuration for Emacs. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; Dockerfile is a text document that contains all the commands
;; a user could call on the command line to assemble an image

;;; Code:

;; Use docker
(use-package docker
  :defer t
  :init
  (progn
    (use-package docker-tramp
      :defer t)

    (use-package dockerfile-mode
      :mode "\\Dockerfile\\'")

    (use-package docker-compose-mode
      :mode "docker-compose[^/]*\\.yml\\'")
      ))

(provide 'conf-docker)

;;; conf-docker.el ends here
