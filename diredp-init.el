(require 'dired-x)
(setq-default dired-omit-files-p t) ; Buffer-local variable
(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))
;; Open directory in the same buffer
(toggle-diredp-find-file-reuse-dir t)
