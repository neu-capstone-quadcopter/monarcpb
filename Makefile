PROTOC = protoc

NANOPB_DIR  = "nanopb"

all: api.proto
	@mkdir -p build/cpp build/nano build/python
	$(PROTOC) --plugin=protoc-gen-nanopb=$(NANOPB_DIR)/generator/protoc-gen-nanopb \
		--cpp_out=build/cpp \
		--nanopb_out=build/nano \
		--python_out=build/python \
		api.proto

clean:
	@rm -rf build
