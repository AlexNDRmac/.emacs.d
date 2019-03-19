(setq yaml-packages '(
    company
    flycheck
    yaml-mode))

(use-package yaml-mode
  :ensure t
  :mode "\\.ya?ml\\'"
  :config (add-hook 'yaml-mode-hook
                      '(lambda ()
                         (define-key yaml-mode-map "\C-m" 'newline-and-indent))))
