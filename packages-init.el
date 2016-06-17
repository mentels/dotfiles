; Add repositories with packages archives
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("elpa" . "http://elpa.gnu.org/packages/")))

(setq package-list '(magit		
                     ido-vertical-mode
                     nlinum
                     ;;idomenu
                     smex
                     auctex
                     ;; rainbow-delimiters
                     fill-column-indicator
                     ;; autopair
                     smart-mode-line
                     dired+
                     auto-indent-mode
                     ;; git-commit-mode
                     ;; git-rebase-mode
                     org-pomodoro
                     ace-jump-mode
		     ace-window
		     ace-jump-buffer
                     yasnippet
                     exec-path-from-shell
                     markdown-mode
		     ;; color-theme-sanityinc-solarized
		     edts
                     ;; elpy
                     gnuplot-mode
                     markdown-toc
                     dockerfile-mode
                     ))

(defun install-packages ()
  (interactive)
  (package-refresh-contents)
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   package-list)
  (package-initialize))
