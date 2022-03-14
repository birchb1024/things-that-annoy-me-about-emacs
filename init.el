; -*-elisp-*-
;;
;; Peter Birch's personal preferences
;;
(global-linum-mode) ; https://emacs.stackexchange.com/questions/278/how-do-i-display-line-numbers-in-emacs-not-in-the-mode-line
(show-paren-mode 1)


;; MELPA see: https://stable.melpa.org/#/getting-started
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'use-package)
(use-package "go-mode")
(use-package "lua-mode")
(use-package "sh-script")

(use-package "yaml-mode")
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode)) # TODO mapcar?
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
;(add-hook 'yaml-mode-hook
;    '(lambda ()
;       (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; org-mode
(setq org-export-backends (quote (md)))

;;
(global-set-key (kbd "<M-up>")   'previous-line)
(global-set-key (kbd "<M-down>") 'next-line)

;; See https://dr-knz.net/a-tour-of-emacs-as-go-editor.html
(require 'go-mode)
(column-number-mode 1)
(global-hl-line-mode 1)

(global-whitespace-mode 1)
;; see the apropos entry for whitespace-style
(setq
   whitespace-style
   '(face ; viz via faces
     trailing ; trailing blanks visualized
     lines-tail ; lines beyond
                ; whitespace-line-column
     space-before-tab
     space-after-tab
     newline ; lines with only blanks
     indentation ; spaces used for indent
                 ; when config wants tabs
     empty ; empty lines at beginning or end
     )
   whitespace-line-column 100 ; column at which
        ; whitespace-mode says the line is too long
)


					;(require 'lua-mode)

;;
(global-set-key (kbd "<M-up>")   'previous-line)
(global-set-key (kbd "<M-down>") 'next-line)

;; See https://dr-knz.net/a-tour-of-emacs-as-go-editor.html
(require 'go-mode)
(column-number-mode 1)
(global-hl-line-mode 1)

(global-whitespace-mode 1)
;; see the apropos entry for whitespace-style
(setq
   whitespace-style
   '(face ; viz via faces
     trailing ; trailing blanks visualized
     lines-tail ; lines beyond
                ; whitespace-line-column
     space-before-tab
     space-after-tab
     newline ; lines with only blanks
     indentation ; spaces used for indent
                 ; when config wants tabs
     empty ; empty lines at beginning or end
     )
   whitespace-line-column 100 ; column at which
        ; whitespace-mode says the line is too long
)
(show-paren-mode 1)

;(add-mode-hook 'go-mode-hook (lambda ()
;    (setq tab-width 4)))


					;(require 'lua-mode)

;;
(global-set-key (kbd "<M-up>")   'previous-line)
(global-set-key (kbd "<M-down>") 'next-line)

;; See https://dr-knz.net/a-tour-of-emacs-as-go-editor.html
(require 'go-mode)
(column-number-mode 1)
(global-hl-line-mode 1)

(global-whitespace-mode 1)
;; see the apropos entry for whitespace-style
(setq
   whitespace-style
   '(face ; viz via faces
     trailing ; trailing blanks visualized
     lines-tail ; lines beyond
                ; whitespace-line-column
     space-before-tab
     space-after-tab
     newline ; lines with only blanks
     indentation ; spaces used for indent
                 ; when config wants tabs
     empty ; empty lines at beginning or end
     )
   whitespace-line-column 100 ; column at which
        ; whitespace-mode says the line is too long
)
(show-paren-mode 1)

;(add-mode-hook 'go-mode-hook (lambda ()
;    (setq tab-width 4)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(yaml-mode gnuplot use-package paradox lua-mode go-mode))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
