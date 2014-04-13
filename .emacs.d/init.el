;; use the package system
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'auto-complete)
(require 'quack)

;; keymap settings
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-z" 'undo)
(global-set-key "\C-c ;" 'comment-dwim)
(global-set-key "\C-c :" 'uncomment-region)
(global-set-key "\C-c " 'next-multiframe-window)

;; window settings
(setq initial-frame-alist
      (append
       '((top . 0)
	 (left . 200)
	 (width . 150)
	 (height . 50))
       initial-frame-alist))

(add-to-list 'default-frame-alist
	     '(alpha . 80))

;; A lovely programming font
(add-to-list 'default-frame-alist '(font . "ricty-12"))

;; for auto complete mode
(global-auto-complete-mode t)
(setq ac-use-menu-map t)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

;; prohibit to make backups
(setq backup-inhibited t)

(show-paren-mode)

(setq load-path (cons "~/.emacs.d/etc/" load-path))

;; development settings
;(load "~/.emacs.d/devel/init.el")
