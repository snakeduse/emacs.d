;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Установка окружения, меню
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Начинаем работу в домашнем каталоге, указанном в переменной окружения HOME
(cd "~/")
(setq my-author-name "snakeduse"
      user-full-name "Aleksey Profatilov"
      user-male-address "snakeduse@gmail.com"
      ;;Clear Scratch buffer
      initial-scratch-message nil
      ;;имя файла в заголовке окна
      frame-title-format '(buffer-file-name "%f" ("%b"))
      ;; уберем экраны приветствия при запуске
      inhibit-splash-screen t
      ;; Не отображаем сообение о том, что экран приветствия можно вызвать комбинацией C-h C-a
      ingibit-startup-message nil
      ;; лучшая отрисовка буфера
      redisplay-dont-pause t
      ;; отключить звуковой сигнал
      ring-bell-function 'ignore      
      lisp-indent-function  'common-lisp-indent-function

      ;;; Плавный скроллинг
      
      ;; вверх-вниз по 1 строке
      scroll-step 1 
      scroll-margin 10
      scroll-conservatively 10000
      ;;строк за один щелчок колеса мышки
      mouse-wheel-scroll-amount '(2 ((shift) . 1)) 
      ;;следить за мышкой
      mouse-wheel-follow-mouse 't

      ;;общий с ОС буфер обмена
      x-select-enable-clipboard t

      ;;; Настройки пустых строк в конце буфера

      ;;добавить новую пустую строку в конец файла при сохранении
      require-final-newline t
      ;;не добавлять новую строку в конец при смещении курсора  стрелками
      next-line-add-newlines nil

      ;;; Выделять результаты поиска
      search-highlight t
      query-replace-highlight t

      ;;удаляем в корзину
      delete-by-moving-to-trash t
      ;;http://ergoemacs.org/emacs/emacs_subword-mode_superword-mode.html
      subword-mode 1

      ;;; Настройки пустых строк в конце буфера
      ;;добавить новую пустую строку в конец файла при сохранении
      require-final-newline t
      ;;не добавлять новую строку в конец при смещении курсора  стрелками
      next-line-add-newlines nil

      ;;в строке состояния показываем номера строки, колонки, размер файла
      column-number-mode t
      line-number-mode t)

;;Recent files in menu
(recentf-mode 1)
(global-set-key (kbd "<f2>") 'recentf-open-files)

;; включить выделение выражений между {},[],()
(show-paren-mode t)

;; автозакрытие {},[],() с переводом курсора внутрь скобок
(electric-pair-mode 1)

;; удалить выделенный текст при вводе поверх
(delete-selection-mode t)

;; GUI components
(tooltip-mode -1)

;; отключаем графическое меню
(menu-bar-mode 1)

;; отключаем tool-bar
(tool-bar-mode -1)

(setq-default cursor-type 'bar ;задаем стиль курсора
              ;;отключить возможность ставить отступы TAB'ом
              indent-tabs-mode nil
              ;;ширина табуляции - 4 пробельных символа
              tab-width 4
              c-basic-offset 4
              ;;стандартная ширина отступа - 4 пробельных символа
              standart-indent 4
              ;;сдвигать Lisp-выражения на 2 пробельных символа
              lisp-body-indent 2
              blink-cursor-interval 0.4
              bookmark-default-file (expand-file-name ".bookmarks.el" user-emacs-directory))

;; переносить по словам
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; Определим размер окна при запуске
(when (window-system)
  (set-frame-size (selected-frame) 100 55))

;;; Укоротить сообщения в минибуфере
(defalias 'yes-or-no-p 'y-or-n-p)

(mouse-wheel-mode 1) ;используем колесо мышки

(size-indication-mode t)

(provide 'init-base)
