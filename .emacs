(setq load-path (cons "~/.emacs.d/elisp/" load-path))
(setq load-path (cons "~/.emacs.d/elisp/slime/" load-path))

(require 'install-elisp)
(require 'auto-complete)
(require 'linum)
(require 'quack)

(global-auto-complete-mode t)
(setq ac-use-menu-map t)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

(global-linum-mode)
(setq linum-format "%5d")

(setq install-elisp-repository-directory "~/.emacs.d/elisp/")

(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup)

(load-library "php-mode")
(require 'php-mode)

(autoload 'gauche-mode "gauche-mode" nil t)
(setq auto-mode-alist (cons '("\\.scm$" . gauche-mode) auto-mode-alist))

;(require 'mmm-mode)
;(setq mmm-global-mode 'maybe)
;(mmm-add-mode-ext-class nil "\\.php?\\'" 'html-php)
;(mmm-add-classes
;'((html-php
;:submode php-mode
;:front "<\\?\\(php\\)?"
;:back "\\?>")))
;(add-to-list 'auto-mode-alist '("\\.php?\\'" . xml-mode))

(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-z" 'undo)
(global-set-key "\C-c ;" 'comment-dwim)
(global-set-key "\C-c :" 'uncomment-region)
(global-set-key "\C-c " 'next-multiframe-window)

(setq initial-frame-alist
      (append
       '((top . 0)
	 (left . 200)
	 (width . 150)
	 (height . 68))
       initial-frame-alist))

(add-to-list 'default-frame-alist
	     '(alpha . 85))

;(set-frame-parameter nil 'alpha 85)
;(set-frame-height (next-frame) 50)
;(set-frame-width (next-frame) 80)

;(setq backup-inhibited t)

(setq delete-auto-save-files t)

(setq process-coding-system-alist
      (cons '("gosh" utf-8 . utf-8) process-coding-system-alist))
;; goshインタプリタのパスに合わせます。-iは対話モードを意味します。
(setq gosh-program-name "/usr/local/bin/gosh -i")
;; schemeモードとrun-schemeモードにcmuscheme.elを使用します。
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)
;; ウィンドウを2つに分け、一方でgoshインタプリタを実行するコマンドを定義します。
(defun scheme-other-window ()
  "Run scheme on other window"
  (interactive)
  (switch-to-buffer-other-window
   (get-buffer-create "*scheme*"))
  (run-scheme gosh-program-name))
;; そのコマンドをCtrl-cSで呼び出します。
(define-key global-map
  "\C-cS" 'scheme-other-window)

;; 直前/直後の括弧に対応する括弧を光らせます。
(show-paren-mode)

(put 'fn 'scheme-indent-function 1)

(font-lock-add-keywords
 'gauche-mode
 '(("fn" . font-lock-keyword-face)))

;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(quack-programs (quote ("gauche" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi"))))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; )
