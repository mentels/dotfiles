(defun create-link-to-file-at-place (name)
  "Copy to the kill ring a string in the format \"file-name:line-number\"
for the current buffer's file name, and the line number at point."
  (interactive "sLink Name: ")
  (kill-new
   (format "[[file:%s::%d][%s]]" (buffer-file-name) (line-number-at-pos) name)))

(defun scroll-up-one-line()
  (interactive)
  (scroll-up 1))

(defun scroll-down-one-line()
  (interactive)
  (scroll-down 1))

;; ;; kill the WHOLE current line without going to the beginning
;; ;; - C-w kill the line and saves it to the kill ring
;; ;; proceeds normally when there's a selsection
;; ;; proceeds normally when there's a selsection
;; (defun slick-cut (beg end)
;;   (interactive
;;    (if mark-active
;;        (list (region-beginning) (region-end))
;;      (list (line-beginning-position) (line-beginning-position 2)))))
;; (advice-add 'kill-region :before #'slick-cut)


;; ;; saves the WHOLE current line wihtout goint to the beginning:
;; ;; - M-w saves the current line to the kill ring
;; ;; - if regions is selected it proceeds normally
;; ;; copies currnt line without selecting it
;; (defun slick-copy (beg end)
;;   (interactive
;;    (if mark-active
;;        (list (region-beginning) (region-end))
;;      (message "Copied line")
;;      (list (line-beginning-position) (line-beginning-position 2)))))

;; (advice-add 'kill-ring-save :before #'slick-copy)


;; indenting

(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indented selected region."))
      (progn
        (indent-buffer)
        (message "Indented buffer.")))))
