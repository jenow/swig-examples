%module kuzzlesdk
%include "std_string.i"

%typemap(javabase) kuzzleio::KuzzleException "java.lang.RuntimeException";

%typemap(throws,throws="io.kuzzle.sdk.KuzzleException") kuzzleio::KuzzleException {
  (void)$1;
  jclass excpcls = jenv->FindClass("io/kuzzle/sdk/KuzzleException");
  if (excpcls) {
    jenv->ThrowNew(excpcls, $1.what());
   }
  return $null;
}

%include "typemap.hpp"