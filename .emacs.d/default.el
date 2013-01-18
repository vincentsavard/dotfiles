;; Remove the menu bar
(menu-bar-mode -1)

;; Type y or n instead of yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;; Show line numbers to the left
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")

;; Show column in the state bar
(column-number-mode t)

;; Save backup in ~/.saves/
(setq backup-directory-alist '(("." . "/home/vincent/.saves")))

;; Color theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)
