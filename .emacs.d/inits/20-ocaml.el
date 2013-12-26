(setq auto-mode-alist (append '(("\\.ml[ily]?$" . tuareg-mode)
                                ("\\.topml$" . tuareg-mode)) auto-mode-alist))

(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)
;; (autoload 'tuareg-imenu-set-imenu "tuareg-imenu"
;;                                   "Configuration of imenu for tuareg" t)

;; (require 'tuareg-imenu)
;; (add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)
;; (require 'flymake-tuareg)
;; (add-hook 'tuareg-mode-hook 'flymake-tuareg-load)