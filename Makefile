.DEFAULT_GOAL := all

# Cleans build artifacts from the repo directory
.PHONY: clean
clean:
	rm -rf build/
	rm -rf web/elm-stuff

serve: all
	static-file-server serve --path build/ --port 8000

# Start of artifact generation in build directory
.PHONY: all
all: build/index.html build/js/ror2/main.js build/css/ror2.css build/js/ror2/catalog.js build/js/ror2/config.js images

build/index.html: build web/index.html
	cp web/index.html build/index.html

# Made phony to have `elm-make` track dependencies instead of attempting in make
.PHONY: build/js/ror2/main.js
build/js/ror2/main.js: build/js/ror2
	cd web && elm make src/Main.elm --output ../build/js/ror2/main.js

# Make phony to have `dhall-to-json` rerun everytime
.PHONY: build/js/ror2/catalog.js
build/js/ror2/catalog.js: build/js/ror2 data/catalog.dhall
	dhall-to-json --file data/catalog.dhall --output build/js/ror2/catalog.js --pretty
	json-to-javascript catalog build/js/ror2/catalog.js

build/js/ror2/config.js: build/js/ror2 web/config.js
	cp web/config.js build/js/ror2/config.js

# Made phony to have `tailwindcss` track dependencies instead of attempting in make
.PHONY: build/css/ror2.css
build/css/ror2.css: build/css
	tailwindcss -i web/styles/input.css -o build/css/ror2.css -c web/styles/tailwind.config.js	

# Made phony to have `rsync` track updating the images instead of
.PHONY: images
images: build/images/ror2/backgrounds build/images/ror2/items
	rsync -ah web/images/ build/images/ror2/

# Start of rules for generating the build directory
build:
	mkdir -p build

build/js: build
	mkdir -p build/js

build/js/ror2: build/js
	mkdir -p build/js/ror2

build/css: build
	mkdir -p build/css

build/images: build
	mkdir -p build/images

build/images/ror2: build/images
	mkdir -p build/images/ror2

build/images/ror2/backgrounds: build/images/ror2
	mkdir -p build/images/ror2/backgrounds

build/images/ror2/items: build/images/ror2
	mkdir -p build/images/ror2/items
	
