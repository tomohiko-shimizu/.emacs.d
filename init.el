(global-set-key "\C-h" 'delete-backward-char)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(when (eq system-type 'windows-nt)
  (setq default-file-name-coding-system 'shift_jis))
