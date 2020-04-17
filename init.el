(set-frame-font "Source Code Pro-14" nil t)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
;;(require 'recentf)
(recentf-mode 1)

(add-to-list 'load-path "~/.emacs.d/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)

(add-to-list 'load-path "~/.emacs.d/goto-chg")
(require 'goto-chg)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)



