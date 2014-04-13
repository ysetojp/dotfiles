;; perl mode
(defalias 'perl-mode 'cperl-mode)

(autoload 'cperl-mode "cperl-mode" "alternative mode for editing Perl programs" t)
(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))
