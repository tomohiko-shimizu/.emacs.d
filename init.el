(add-to-list 'load-path "~/.emacs.d/lisp")
(set-language-environment "Japanese")
(global-set-key "\C-h" 'delete-backward-char)
(set-keyboard-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(setq-default indent-tabs-mode nil)

(require 'php-mode)

(setq php-mode-force-pear t)
(add-hook 'php-mode-hook
          (lambda ()
            (setq tab-width 4)
            (setq c-basic-offset 4)
            (setq indent-tabs-mode nil)))
