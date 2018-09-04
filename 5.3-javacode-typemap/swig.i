%module kuzzlesdk
 
%rename (_now) kuzzleio::server::now();

%javamethodmodifiers kuzzleio::server::now() "private";
%typemap(javacode) kuzzleio::server %{

  public java.util.Date now() {
    long res = _now();

    return new java.util.Date(res);
  }

%}

%include "server.hpp"