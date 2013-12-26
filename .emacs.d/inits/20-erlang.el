(setq erlang-root-dir "/usr/lib/erlang")
(let ((erlang-lib-dir (concat erlang-root-dir "/lib/"))
      (erlang-bin-dir (concat erlang-root-dir "/bin/")))
  (setq
   exec-path (cons erlang-bin-dir exec-path)
   load-path (cons (concat erlang-lib-dir (file-name-completion "tools-" erlang-lib-dir)
                           "emacs") load-path)))

(require 'erlang-start)
(require 'erlang-flymake)
