;; make prog-mode parent mode of the erlang-mode
(add-hook 'erlang-mode-hook
          (lambda () (run-hooks 'prog-mode-hook)))

;; The following requires creating a symlink 'tools' to a directory
;; that is always named according to the scheme: 'tool-<Version>'.
;; (setq load-path (cons  "~/.erlang_installations/17.5/tools/emacs" load-path))
;; (setq erlang-root-dir "~/.erlang_installations/17.5/")
;; (setq exec-path (cons "~/.erlang_installations/17.5/bin" exec-path))
;; (require 'erlang-start)

(add-to-list 'auto-mode-alist '("rebar.config" . erlang-mode))
(add-to-list 'auto-mode-alist '("sys.config" . erlang-mode))

(setq erlang-electric-commands '())


;; (add-hook 'erlang-mode-hook 'autopair-mode)
;; (add-hook 'erlang-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'erlang-mode-hook 'linum-mode)
;; (add-hook 'erlang-mode-hook 'fci-mode)
;; (add-hook 'erlang-mode-hook 'auto-indent-mode)
;; (add-hook 'erlang-mode-hook 'whitespace-mode)

;; (add-to-list 'load-path "~/.emacs.d/edts")
(require 'edts-start)
