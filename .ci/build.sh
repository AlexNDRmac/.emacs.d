#!/bin/sh

if [ -z ${CI+x} ] || [ "$CI" != "true" ]; then
    printf "Travis build cannot be applied outside CI system!\n"
    exit 1
fi

ROJECT_ROOT=$(cd "$(dirname $0)/../"; pwd)
ln -s $PROJECT_ROOT $HOME/.emacs.d

echo "Emacs initial startup..."

${EMACS:=emacs} \
    -nw --batch \
    --eval '(let ((debug-on-error t)
                    (url-show-status nil)
                    (user-emacs-directory default-directory)
                    (package-user-dir (expand-file-name (concat "elpa-" emacs-version)))
                    (user-init-file (expand-file-name "init.el"))
                    (load-path (delq default-directory load-path)))
                (load-file user-init-file)
                (run-hooks (quote after-init-hook)))'

echo "Startup successful!"