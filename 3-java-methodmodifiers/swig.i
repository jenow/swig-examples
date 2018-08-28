%module kuzzlesdk
%include "std_string.i"

%rename(makeMePrivate) make_me_private;
%javamethodmodifiers kuzzleio::auth::make_me_private(const std::string& arg) "private";

%include "kuzzle.hpp"