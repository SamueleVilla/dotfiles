;; Appearence
(show-paren-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(global-display-line-numbers-mode)

(add-to-list 'default-frame-alist '(font . "Fira Code Nerd Font Mono"))
(setq backup-directory-alist '(("." . "~/.emacs.d/autosave")))


(setq-default fill-column 80)
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

(require 'whitespace)
(setq whitespace-line-column 80) ;; Imposta il limite a 80 colonne
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)
(put 'upcase-region 'disabled nil)
