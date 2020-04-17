(setq visible-bell t)
(setq auto-save-default nil)
(setq-default tab-width 2)
(set-frame-font "Source Code Pro-14" nil t)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(tool-bar-mode -1)
(recentf-mode 1)

;; (add-to-list 'load-path "~/.emacs.d/exec-path-from-shell")
;; (require 'exec-path-from-shell)
;; (exec-path-from-shell-initialize)

(add-to-list 'load-path "~/.emacs.d/emacs-libvterm")
(require 'vterm)
(setq vterm-kill-buffer-on-exit t)

(require 'which-key "~/.emacs.d/emacs-which-key/which-key.elc")
(which-key-mode)

(require 'dash "~/.emacs.d/dash.el/dash.elc")

(require 'winum "~/.emacs.d/emacs-winum/winum.elc")
(winum-mode)

(require 'undo-tree "~/.emacs.d/undo-tree/undo-tree.elc")
(global-undo-tree-mode)

(require 'goto-chg "~/.emacs.d/goto-chg/goto-chg.elc")

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(require 'evil-surround "~/.emacs.d/evil-surround/evil-surround.elc")
(global-evil-surround-mode 1)

(add-to-list 'load-path "~/.emacs.d/evil-commentary")
(require 'evil-commentary)
(evil-commentary-mode)

(require 'evil-visualstar "~/.emacs.d/evil-visualstar/evil-visualstar.elc")
(global-evil-visualstar-mode)

(add-to-list 'load-path "~/.emacs.d/evil-matchit")
(require 'evil-matchit)
(global-evil-matchit-mode 1)

(require 'evil-exchange "~/.emacs.d/evil-exchange/evil-exchange.elc")
(evil-exchange-install)

(require 'evil-args "~/.emacs.d/evil-args/evil-args.elc")

(require 'evil-numbers "~/.emacs.d/evil-numbers/evil-numbers.elc")

(require 'smex "~/.emacs.d/smex/smex.elc")
(smex-initialize)

(add-to-list 'load-path "~/.emacs.d/swiper")
(require 'ivy)
(ivy-mode 1)
(require 'counsel)
(counsel-mode)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

(add-to-list 'load-path "~/.emacs.d/projectile")
(require 'projectile)
(projectile-mode 1)

(add-to-list 'load-path "~/.emacs.d/counsel-projectile")
(require 'counsel-projectile)
(counsel-projectile-mode)

(add-to-list 'load-path "~/.emacs.d/go-mode.el")
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

;; (add-to-list 'load-path "~/.emacs.d/gtm-emacs-plugin")
;; (require 'git-time-metric)
;; (add-hook 'after-save-hook 'git-time-metric-record)

;; (add-to-list 'load-path "~/.emacs.d/zoom")
(require 'zoom "~/.emacs.d/zoom/zoom.elc")
(zoom-mode)

;; Keybindings

(global-set-key (kbd "s-`") 'vterm-other-window) ;; removes other-frame

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
