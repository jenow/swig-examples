%module kuzzlesdk
%include "std_string.i"

%typemap(javabase) kuzzleio::KuzzleException "java.lang.RuntimeException"; 
 
%include "exceptions.hpp"