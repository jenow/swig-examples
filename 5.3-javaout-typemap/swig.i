%module(directors="1") kuzzlesdk
%feature("director") listener;
 
%typemap(javaclassmodifiers) kuzzleio::listener "public abstract class"
%javamethodmodifiers kuzzleio::listener::trigger "public abstract"
%typemap(javaout) void kuzzleio::listener::trigger ";"

%include "listeners.hpp"