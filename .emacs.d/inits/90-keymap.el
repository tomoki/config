;; http://akisute3.hatenablog.com/entry/20120318/1332059326
(keyboard-translate ?\C-h ?\C-?)
(define-key global-map (kbd "C-\\") 'hs-toggle-hiding)
(define-key global-map (kbd "C-;") 'ace-jump-mode)
(define-key global-map (kbd "C-o") (lambda () (interactive)
                                     (move-end-of-line nil) (newline-and-indent)))
(define-key global-map (kbd "M-g") 'goto-line)

(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)
