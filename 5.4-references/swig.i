%module kuzzlesdk

%include <typemaps.i> 

%typemap(jni) kuzzleio::Event& "jobject"
%typemap(jtype) kuzzleio::Event& "Event"
%typemap(jstype) kuzzleio::Event& "Event"
%typemap(javain) kuzzleio::Event& "$javainput"
%typemap(in) kuzzleio::Event& (kuzzleio::Event tmp) {
  jmethodID swigValueMethod = jenv->GetMethodID(jenv->GetObjectClass($input), "swigValue", "()I");
  jint swigValue = jenv->CallIntMethod($input, swigValueMethod, 0);

  kuzzleio::Event e = (Event)swigValue;
  $1 = &e;
}
%apply kuzzleio::Event& event { kuzzleio::Event& event };

%include "kuzzle.hpp"