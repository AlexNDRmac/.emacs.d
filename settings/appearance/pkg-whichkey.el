;;; pkg-whichkey.el --- Display available keybindings in popup -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.
;;
;; License: GPLv3

;;; Commentary:

;; This file is used to Set up and configure KeyBindings packagee for Emacs
;; @see https://github.com/justbur/emacs-which-key.

;;; Code:

(use-package which-key
    :diminish which-key-mode
    :hook
    (after-init . which-key-mode))

(which-key-setup-side-window-right-bottom)  ; Popup side window on right

(provide 'pkg-whichkey)

;;; pkg-whichkey.el ends here
