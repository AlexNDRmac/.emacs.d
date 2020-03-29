#!/bin/sh -eu

echo "Emacs initial startup..."

EMACS=${EMACS:-emacs}

command -v "$EMACS" >/dev/null || {
  >&2 echo "Can't find GNU Emacs in your PATH"
  exit 1
}

[ -n "${1-}" ] && {
  [ "$1" = -d ] || [ "$1" = --debug ] && {
    shift
    export DEBUG=1
  }
}

${EMACS} \
  --no-window-system \
  --batch \
  --eval '(let ((debug-on-error t)
                (url-show-status nil)
                (user-emacs-directory default-directory)
                (package-user-dir (expand-file-name (concat "elpa-" emacs-version)))
                (user-init-file (expand-file-name "init.el"))
                (load-path (delq default-directory load-path)))
          (load-file user-init-file)
          (run-hooks (quote after-init-hook)))'

echo "Startup successful!"
