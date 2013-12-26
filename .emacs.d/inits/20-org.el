;; http://www.emacswiki.org/emacs/OrgMode
(require 'org)

(setq org-replace-disputed-keys t)
;; S-RET → C-S-RET
;; S-up → M-p
;; S-down → M-n
;; S-left → M--
;; S-right → M-+
(setq org-log-done 'time)
(setq org-directory "~/Dropbox/org/")
