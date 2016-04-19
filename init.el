
(message "Start config loading")
(setq emacs-load-start-time (current-time));засекаем время начала загрузки

;;используем Common Lisp
(require 'cl)

;; System-type definition
(defun linux-system-p()
    (string-equal system-type "gnu/linux"))
(defun windows-system-p()
    (string-equal system-type "windows-nt"))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(when (linux-system-p)
  (require 'server)
  (unless (server-running-p)
    (server-start)))

(require 'init-benchmarking)
(require 'init-utils)
(require 'init-elpa)

;;; Load configs

(require-package 'diminish)
(require-package 'mwe-log-commands)

(require 'init-encoding)
(require 'init-backup)
(require 'init-base)
(require 'init-linum)

(require 'init-themes)
(require 'init-editing)
(require 'init-isearch)
(require 'init-sessions)
(require 'init-ido)

(message "Configs loaded")
(message "Startup time: %g seconds." (float-time (time-since emacs-load-start-time)))

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-solarized-light)))
 '(custom-safe-themes
   (quote
    ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
