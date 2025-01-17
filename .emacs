(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

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

;; Theme
(unless (package-install 'monokai-theme)
  (package-install 'monokai-theme))
(require 'monokai-theme)
(load-theme 'monokai t)

;; Modes
;; Evil Mode
(unless (package-installed-p 'evil)
  (package-install 'evil))
(require 'evil)
(evil-mode 1)
(ido-mode 1)

(package-install 'julia-mode)
(require 'julia-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(julia-mode monokai-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
