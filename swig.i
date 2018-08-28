%module(directors="1") kuzzlesdk
%include "std_string.i"
%include "exception.i"

%extend kuzzleio::server {
  void hello() {
    std::cout << "Hello world" << std::endl;
  }
}


%rename(Auth, match="class") auth;
%ignore kuzzleio::auth::toIgnore;
%rename(toRename) to_rename;
// %rename(renameMe) rename_me;
%rename(renameMe, fullname="1") kuzzleio::auth::rename_me(const std::string& arg);


%javamethodmodifiers kuzzleio::auth::rename_me(const std::string& arg) "private";


%feature("director") listener;

%typemap(javabase) kuzzleio::KuzzleException "java.lang.RuntimeException";
%typemap(throws,throws="io.kuzzle.sdk.KuzzleException") kuzzleio::KuzzleException {
  (void)$1;
  jclass excpcls = jenv->FindClass("io/kuzzle/sdk/KuzzleException");
  if (excpcls) {
    jenv->ThrowNew(excpcls, $1.what());
   }
  return $null;
}

%include "kuzzle.hpp"