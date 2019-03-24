;;; packages.el --- Bootstrap Packages file. -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used for Bootstraping custom Packages for Emacs.

;;; Code:

;; Set up package
(require 'package)

;; Set Up Packages to Vendor's dir Including Emacs version
(setq
 package--init-file-ensured t
 package-user-dir (concat user-local-dir "vendor/" emacs-version "/elpa"))

(setq package-archives
      '(("org"          . "http://orgmode.org/elpa/")
        ("melpa"        . "http://melpa.org/packages/")
        ("melpa-stable" . "http://stable.melpa.org/packages/")
        ("gnu"          . "https://elpa.gnu.org/packages/")))

;; Init Package Manager
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (or (package-installed-p 'use-package)
            (package-installed-p 'diminish))
  (package-refresh-contents)
  (package-install 'use-package)
  (package-install 'diminish))

;; From use-package README
(eval-when-compile (require 'use-package))

(require 'diminish)
(require 'bind-key)

(provide 'packages)
;;; packages.el ends here
