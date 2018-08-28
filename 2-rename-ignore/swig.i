%module kuzzlesdk
%include "std_string.i"

%rename(Auth, match="class") auth;
%ignore kuzzleio::auth::toIgnore;
%rename(toRename) to_rename;
// %rename(renameMe) rename_me;
%rename(renameMe, fullname="1") kuzzleio::auth::rename_me(const std::string& arg);

%include "kuzzle.hpp"