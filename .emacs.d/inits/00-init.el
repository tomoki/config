(setq-default inhibit-startup-message t)

;; (setq-default kill-whole-line t)
;; conficlit with auto-save
;; (add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default tab-width 4 indent-tabs-mode nil)

(setq-default scroll-step 1
              scroll-margin 0
              scroll-conservatively 35)

(setq-default temporary-file-directory "/tmp")

(setq backup-directory-alist
  (cons (cons ".*" (expand-file-name "~/.emacs.d/backup"))
        backup-directory-alist))

(setq auto-save-file-name-transforms
  `((".*", (expand-file-name "~/.emacs.d/backup/") t)))

(fset 'yes-or-no-p 'y-or-n-p)

(global-auto-revert-mode 1)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'undo-tree)
(global-undo-tree-mode)

(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
;;Downloaded from git.
(add-to-list 'load-path "~/.emacs.d/elmy/popwin-misc")

(require 'popwin-browse-kill-ring)
(push "*Kill Ring*" popwin:special-display-config)
(push '(" *undo-tree*" :width 0.3 :position right) popwin:special-display-config)
;; (push "*Buffer List*" popwin:special-display-config)

(defmacro append-to-list (to lst)
  `(setq ,to (append ,lst ,to)))

(require 'anzu)
(global-anzu-mode +1)
(global-set-key (kbd "M-%") 'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

(require 'auto-save-buffers-enhanced)
;; (setq auto-save-buffers-enhanced-interval 1) ; 指定のアイドル秒で保存
(auto-save-buffers-enhanced t)
