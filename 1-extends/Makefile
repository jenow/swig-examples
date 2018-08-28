all:
		mkdir -p build
		swig -Wall -c++ -java -package io.kuzzle.sdk -outdir build swig.i

clean:
		rm -rf build swig_wrap.cxx

re: clean all

.PHONY: all clean re