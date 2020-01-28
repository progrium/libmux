.PHONY: all bindings

all: build/libmux.dylib bindings

bindings: build/libmux.dylib
	make -C bindings/node

build/libmux.dylib:
	mkdir -p build
	go build -o ./build/libmux.dylib -buildmode=c-shared ./libmux.go