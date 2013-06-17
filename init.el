(add-to-list 'load-path "~/.emacs.d/")
(global-set-key "\C-h" 'delete-backward-char)
(set-keyboard-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(setq-default indent-tabs-mode nil)
(when (eq system-type 'windows-nt)
  (setq default-file-name-coding-system 'shift_jis)
  (require 'server)
  (server-start)
  (remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function))

;;;行番号を表示
(require 'linum)
(require 'php-mode)
;; 全角スペース タブ trailing-spacesを目立たせる
(require 'whitespace)
;; space-markとtab-mark、それからspacesとtrailingを対象とする
(setq whitespace-style '(space-mark tab-mark face spaces trailing))
(setq whitespace-display-mappings
'(
;; (space-mark ?\ [?\u00B7] [?.]) ; space - centered dot
(space-mark ?\xA0 [?\u00A4] [?_]) ; hard space - currency
(space-mark ?\x8A0 [?\x8A4] [?_]) ; hard space - currency
(space-mark ?\x920 [?\x924] [?_]) ; hard space - currency
(space-mark ?\xE20 [?\xE24] [?_]) ; hard space - currency
(space-mark ?\xF20 [?\xF24] [?_]) ; hard space - currency
(space-mark ?\u3000 [?\u25a1] [?_ ?_]) ; full-width-space - square
;; NEWLINE is displayed using the face `whitespace-newline'
;; (newline-mark ?\n [?$ ?\n]) ; eol - dollar sign
;; (newline-mark ?\n [?\u21B5 ?\n] [?$ ?\n]) ; eol - downwards arrow
;; (newline-mark ?\n [?\u00B6 ?\n] [?$ ?\n]) ; eol - pilcrow
;; (newline-mark ?\n [?\x8AF ?\n] [?$ ?\n]) ; eol - overscore
;; (newline-mark ?\n [?\x8AC ?\n] [?$ ?\n]) ; eol - negation
;; (newline-mark ?\n [?\x8B0 ?\n] [?$ ?\n]) ; eol - grade
;;
;; WARNING: the mapping below has a problem.
;; When a TAB occupies exactly one column, it will display the
;; character ?\xBB at that column followed by a TAB which goes to
;; the next TAB column.
;; If this is a problem for you, please, comment the line below.
(tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t]) ; tab - left quote mark
))
;; whitespace-spaceの定義を全角スペースにし、色をつけて目立たせる
(setq whitespace-space-regexp "\\(\u3000+\\)")
(set-face-foreground 'whitespace-space "cyan")
(set-face-background 'whitespace-space 'nil)
;; whitespace-trailingを色つきアンダーラインで目立たせる
(set-face-underline 'whitespace-trailing t)
(set-face-foreground 'whitespace-trailing "cyan")
(set-face-background 'whitespace-trailing 'nil)
(global-whitespace-mode 1)
(setq-default indent-tabs-mode nil)

(setq php-mode-force-pear t)
(add-hook 'php-mode-hook
          (lambda ()
            (setq tab-width 4)
            (setq c-basic-offset 4)
            (setq indent-tabs-mode nil)))
