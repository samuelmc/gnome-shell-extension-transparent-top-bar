.PHONY: build
build: $(wildcard src/*)
	mkdir -p _build/
	cp -r src/* _build/

.PHONY: install
install:
	rm -rf $(HOME)/.local/share/gnome-shell/extensions/transparent-top-bar@samuelmc
	mkdir -p $(HOME)/.local/share/gnome-shell/extensions/transparent-top-bar@samuelmc
	cp -r _build/* $(HOME)/.local/share/gnome-shell/extensions/transparent-top-bar@samuelmc/

.PHONY: clean
clean:
	rm -rf _build/
