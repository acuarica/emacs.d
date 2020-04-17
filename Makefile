.PHONY: compile clean

ELCS=emacs-libvterm/vterm.elc \
     undo-tree/undo-tree.elc \
     goto-chg/goto-chg.elc \
     emacs-which-key/which-key.elc \
     emacs-winum/winum.elc \
     evil-surround/evil-surround.elc \
     evil-visualstar/evil-visualstar.elc \
     evil-exchange/evil-exchange.elc \
     evil-args/evil-args.elc \
     evil-numbers/evil-numbers.elc \
     smex/smex.elc \
     zoom/zoom.elc

compile: $(ELCS)

clean:
	-rm $(ELCS)

emacs-winum/winum.elc: | dash.el/
goto-chg/goto-chg.elc: | undo-tree/
evil-surround/evil-surround.elc: | evil/
evil-visualstar/evil-visualstar.elc: | evil/
evil-exchange/evil-exchange.elc: | evil/
evil-args/evil-args.elc: | evil/

%.elc: %.el
	emacs --quick $(|:%=--directory %) --batch --funcall batch-byte-compile $<



#@echo $@
#@echo $<
#@echo $?
#@echo $|
#@echo $(|:%=--directory %)
