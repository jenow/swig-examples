build:
	mkdir -p $(BUILDDIR)/build
	swig -Wall -c++ -java -package io.kuzzle.sdk -outdir $(BUILDDIR)/build $(BUILDDIR)/swig.i

_1: BUILDDIR = 1-extends
_1: build

all: _1

clean:
	rm -rf 1-extends/build 1-extends/swig_wrap.cxx 1-extends/swig_wrap.h

.PHONY: build