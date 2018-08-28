all:
	mkdir -p build
	swig -Wall -c++ -java -package io.kuzzle.sdk -outdir build swig.i

clean:
	rm -rf swig_wrap.cxx swig_wrap.h build

re: clean all