.PHONY: build
build: $(wildcard src/*)
	mkdir -p build/
	cd src/ && zip -r ../build/transparent-top-bar@samuelmc.zip .

.PHONY: clean
clean:
	rm -rf build/
