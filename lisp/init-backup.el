
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Настройка резервного копирования (backup)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;бэкап копированием
(setq backup-by-copying t)

;;бэкап хранится в подкаталоге backup домашнего каталога
(setq backup-directory-alist `(("." . "~/backup")))

;;нумерованный бэкап, сохраняются 2 первые и 2 последние версии
;;остальные удаляются
(setq delete-old-versions t
      kept-new-versions 2
      kept-old-versions 2
      version-control t)

(provide 'init-backup)
