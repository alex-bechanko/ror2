
.PHONY: check-schema
check-schema: build/items.data.json build/items.schema.json
	gojsonschema-cli check --document build/items.data.json --schema build/items.schema.json

.PHONY: clean
clean:
	rm -rf build/

build:
	mkdir -p build

build/items.data.json: build data/items.yaml
	y2j convert --input data/items.yaml --output build/items.data.json --prettify

build/items.schema.json: build schemas/items.schema.yaml
	y2j convert --input schemas/items.schema.yaml --output build/items.schema.json --prettify