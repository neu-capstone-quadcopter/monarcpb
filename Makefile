PROTOC = protoc

NANOPB_DIR  = "nanopb"

all: common.proto api.proto
	@mkdir -p build/cpp build/nano build/python
	$(PROTOC) --plugin=protoc-gen-nanopb=$(NANOPB_DIR)/generator/protoc-gen-nanopb \
		--cpp_out=build/cpp \
		--nanopb_out=build/nano \
		--python_out=build/python \
		common.proto api.proto

clean:
	@rm -rf build
