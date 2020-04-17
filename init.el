(set-frame-font "Source Code Pro-14" nil t)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(recentf-mode 1)
(tool-bar-mode -1)
(setq auto-save-default nil)

(add-to-list 'load-path "~/.emacs.d/emacs-libvterm")
(require 'vterm)
(setq vterm-kill-buffer-on-exit t)

(add-to-list 'load-path "~/.emacs.d/emacs-which-key")
(require 'which-key)
(which-key-mode)

(add-to-list 'load-path "~/.emacs.d/dash.el")
(require 'dash)

(add-to-list 'load-path "~/.emacs.d/emacs-winum")
(require 'winum)
(winum-mode)

(add-to-list 'load-path "~/.emacs.d/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)

(add-to-list 'load-path "~/.emacs.d/goto-chg")
(require 'goto-chg)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/evil-surround")
(require 'evil-surround)
(global-evil-surround-mode 1)

(add-to-list 'load-path "~/.emacs.d/evil-commentary")
(require 'evil-commentary)
(evil-commentary-mode)

(add-to-list 'load-path "~/.emacs.d/evil-visualstar")
(require 'evil-visualstar)
(global-evil-visualstar-mode)

(add-to-list 'load-path "~/.emacs.d/evil-matchit")
(require 'evil-matchit)
(global-evil-matchit-mode 1)

(add-to-list 'load-path "~/.emacs.d/evil-exchange")
(require 'evil-exchange)
(evil-exchange-install)

(add-to-list 'load-path "~/.emacs.d/evil-args")
(require 'evil-args)

(add-to-list 'load-path "~/.emacs.d/evil-numbers")
(require 'evil-numbers)

(add-to-list 'load-path "~/.emacs.d/projectile")
(require 'projectile)
(projectile-mode 1)

(add-to-list 'load-path "~/.emacs.d/go-mode.el")
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

;; bind evil-args text objects
(define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
(define-key evil-outer-text-objects-map "a" 'evil-outer-arg)

;; bind evil-forward/backward-args
(define-key evil-normal-state-map "L" 'evil-forward-arg)
(define-key evil-normal-state-map "H" 'evil-backward-arg)
(define-key evil-motion-state-map "L" 'evil-forward-arg)
(define-key evil-motion-state-map "H" 'evil-backward-arg)

;; bind evil-jump-out-args
(define-key evil-normal-state-map "K" 'evil-jump-out-args)

(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)

(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)
(global-set-key (kbd "s-0") 'winum-select-window-0-or-10)
(global-set-key (kbd "s-1") 'winum-select-window-1)
(global-set-key (kbd "s-2") 'winum-select-window-2)
(global-set-key (kbd "s-3") 'winum-select-window-3)
(global-set-key (kbd "s-4") 'winum-select-window-4)
(global-set-key (kbd "s-5") 'winum-select-window-5)
(global-set-key (kbd "s-6") 'winum-select-window-6)
(global-set-key (kbd "s-7") 'winum-select-window-7)
(global-set-key (kbd "s-8") 'winum-select-window-8)
(global-set-key (kbd "s-9") 'winum-select-window-9)
