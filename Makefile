
# Checks if the json data fit's their associated schema
.PHONY: check-schema
check-schema: build/data/items.json build/schemas/items.schema.json
	gojsonschema-cli check --document build/data/items.json --schema build/schemas/items.schema.json

# Cleans build artifacts from the repo directory
.PHONY: clean
clean:
	rm -rf build/
	rm -rf web/elm-stuff

# Starts the dev environment (static-file-server, tailwind, and elm reactor)
.PHONY: dev
dev: build/data/items.json
	@bash tools/dev/dev.sh

# Run tailwind
.PHONY: tailwind
tailwind:
	@bash tools/dev/tailwind.sh

# Run elm reactor
.PHONY: reactor
reactor: build/data/items.json
	@bash tools/dev/elmreactor.sh

# Run static-file-server to serve the items json payload
.PHONY: fileserver
fileserver: build/data/items.json
	@bash tools/dev/staticfileserver.sh

# --- Build specifics ---

build:
	mkdir -p build

build/data: build
	mkdir -p build/data

build/schemas: build
	mkdir -p build/schemas

build/data/items.json: build/data data/items.yaml
	y2j convert --input data/items.yaml --output build/data/items.json --prettify

build/schemas/items.schema.json: build/schemas schemas/items.schema.yaml
	y2j convert --input schemas/items.schema.yaml --output build/schemas/items.schema.json --prettify
