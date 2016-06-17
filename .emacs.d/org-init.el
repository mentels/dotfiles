;; hide leading stars
(setq org-startup-indented t)

;; diable nlinum in the org-mode
(add-hook 'org-mode-hook (lambda () (nlinum-mode 0)))

;; Set ticking sounds for pomodoro
(setq org-pomodoro-play-ticking-sounds nil)
;; Set shortcuts for org-pomodoro
(global-set-key (kbd "C-c p") 'org-pomodoro)
;; Add org-pomodoro hooks for measuring time in breaks too
(add-hook 'org-pomodoro-finished-hook 'org-clock-in-last)
(add-hook 'org-pomodoro-break-finished-hook 'org-clock-out)

;; Set TODO keywords sequences colors
;; (setq org-todo-keyword-faces
;;       '(("TODO" . (:foreground "SpringGreen" :weight bold))
;;         ("DONE" . (:foreground "DarkGreen" :weight bold))
;;         ("WAITING" . (:foreground "Violet red" :weight bold))))

;; ( custom-set-variables
 ;; '(org-agenda-files (quote ("~/Dropbox/notes.org"))))
 ;; '(org-agenda-skip-scheduled-if-done t))

;; Set global agenda command
(global-set-key (kbd "C-c a") 'org-agenda)
;; Insert subheading shortuc
(global-set-key (kbd "M-RET") 'org-insert-subheading)

(setq org-tags-column 80)

(setq org-clock-into-drawer t)

;; truncate long lines by default
(setq org-startup-truncated t)

(setq org-capture-templates
      '(    ;; ... other templates

        ("j" "Journal Entry"
         entry (file+datetree "~/Dropbox/org/journal.org")
         "* %?"
         :empty-lines 1)
        
        ))
