%module(directors="1") kuzzlesdk
%include "std_string.i"

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

%include "kuzzle.hpp"