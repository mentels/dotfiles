(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ace-window-display-mode t)
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(edts-man-root "/Users/szymon.mentel/.emacs.d/edts/doc/18.0")
 '(sml/mode-width (quote rigth))
 '(sml/name-width 40)
 '(sml/shorten-directory t)
 '(sml/theme (quote respectful)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; === GLOBAL CONFIG

;; Initialize installed packages so that settings can be set
(package-initialize)

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Set $MANPATH, $PATH and exec-path from your shell, but only on OS X.
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(global-nlinum-mode t)

(electric-pair-mode t)

(require 'smart-mode-line)
(sml/setup)

;; Disable startup screen
(setq inhibit-startup-message t)

;; Set ibuffer as tool for listing buffers
(defalias 'list-buffers 'ibuffer)

;; Get rid of async shell command buffer
(add-to-list 'display-buffer-alist (cons "\\*Async Shell Command\\*.*" (cons #'display-buffer-no-window nil)))

;; Set directory for backup files
(setq backup-directory-alist `(("." . "~/.emacs_backup")))

(auto-indent-global-mode 1)

;; === SPECIFIC CONFIG FILES

(load "~/.emacs.d/custom-funs-init.el")
(load "~/.emacs.d/org-init.el")
(load "~/.emacs.d/packages-init.el")
(load "~/.emacs.d/ido-init.el")
(load "~/.emacs.d/erlang-init.el")
(load "~/.emacs.d/comment-init.el")
(load "~/.emacs.d/fci-init.el")
(load "~/.emacs.d/smex-init.el")
(load "~/.emacs.d/latex-init.el")
(load "~/.emacs.d/markdown-init.el")
(load "~/.emacs.d/ace-init.el")
(load "~/.emacs.d/snippets-init.el")
(load "~/.emacs.d/diredp-init.el")

;; === GLOBAL SHORTCUTS

;; shortcut for opening init.el
(global-set-key (kbd "<f6>") (lambda() (interactive)(find-file "~/.emacs.d/init.el")))
;; shortcut for loading .emacs
(global-set-key (kbd "<f5>") (lambda() (interactive)(load-file "~/.emacs.d/init.el")))
;; shortcut for ace-jump
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;; shortcut for ace-jump-window
(define-key global-map (kbd "s-i") 'ace-window)
;; shortcuts for ace-jump-buffer
(define-key global-map (kbd "s-o") 'ace-jump-buffer)
(define-key global-map (kbd "s-O") 'ace-jump-buffer-other-window)
;; shortcut for magit
(global-set-key (kbd "s-m") 'magit-status)
;; shortcut for commenting
(global-set-key (kbd "M-;") 'comment-or-uncomment-region-or-line)
;; shortcut for create link to file at place
(define-key global-map (kbd "C-c l") 'create-link-to-file-at-place)
;; shortcut for scrolling by line
(global-set-key (kbd "M-n") 'scroll-down-one-line)
(global-set-key (kbd "M-p") 'scroll-up-one-line)
;; shortcut for reverting buffer
(global-set-key (kbd "s-r") 'revert-buffer)
;; shortcut for indeting whole buffer
(global-set-key (kbd "C-c i b") 'indent-region-or-buffer)
;; shortcut for resizing windows
(global-set-key (kbd "C-x w") 'windresize)
;; shortcuts for increasing/decreasing font size
(global-set-key (kbd "s-=") 'text-scale-increase)
(global-set-key (kbd "s--") 'text-scale-decrease)

;; [Facultative] Only if you have installed async.
(add-to-list 'load-path "~/.emacs.d/custom-packages/async")

(add-to-list 'load-path "~/.emacs.d/custom-packages/helm")
(require 'helm-config)

(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)
