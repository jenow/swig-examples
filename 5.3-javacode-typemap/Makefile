all:
		mkdir -p build
		swig -Wall -c++ -java -package io.kuzzle.sdk -outdir build swig.i

clean:
		rm -rf build swig_wrap.cxx swig_wrap.h

re: clean all

.PHONY: all clean re