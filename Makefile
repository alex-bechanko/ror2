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
all: build/index.html build/js/main.js build/css/style.css build/js/catalog.js build/js/config.js images

build/index.html: build web/index.html
	cp web/index.html build/index.html

# Made phony to have `elm-make` track dependencies instead of attempting in make
.PHONY: build/js/main.js
build/js/main.js: build/js
	cd web && elm make src/Main.elm --output ../build/js/main.js

# Make phony to have `dhall-to-json` rerun everytime
.PHONY: build/js/webcatalog.js
build/js/catalog.js: build/js data/web.dhall
	dhall-to-json --file data/web.dhall --output build/js/catalog.js --pretty --preserve-null
	json-to-javascript catalog build/js/catalog.js

build/js/config.js: build/js web/config.js
	cp web/config.js build/js/config.js

# Made phony to have `tailwindcss` track dependencies instead of attempting in make
.PHONY: build/css/style.css
build/css/style.css: build/css
	cd web && tailwindcss -i input.css -o ../build/css/style.css -c tailwind.config.js	

# Made phony to have `rsync` track updating the images instead of
.PHONY: images
images: build/images/backgrounds build/images/items
	rsync -ah web/images/ build/images/

# Start of rules for generating the build directory
build:
	mkdir -p build

build/js: build
	mkdir -p build/js

build/css: build
	mkdir -p build/css

build/images: build
	mkdir -p build/images

build/images/backgrounds: build/images
	mkdir -p build/images/backgrounds

build/images/items: build/images
	mkdir -p build/images/items
	
