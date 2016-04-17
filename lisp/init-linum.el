;; Linum plugin
(require 'linum)

;; показать номер строки в mode-line
(line-number-mode   t) 

;; показывать номера строк во всех буферах
(global-linum-mode  t) 

;; показать номер столбца в mode-line
(column-number-mode t) 
;; задаем формат нумерации строк
(setq linum-format " %d") 

(provide 'init-linum)
