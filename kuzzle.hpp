#ifndef AUTH_HPP
#define AUTH_HPP

#include <string>
#include <stdexcept>

namespace kuzzleio {
  struct auth {
    int toIgnore;
    int to_rename;

    void rename_me(const std::string& arg) {}
  };

  struct server {
    int rename_me;

    long now() {return 1535466635;}
  };

  struct listener {
    virtual void trigger() = 0;
    virtual ~listener();
  };

  struct KuzzleException : std::runtime_error {
    int status;

    KuzzleException(int status=500, const std::string& message="Internal Exception");
    KuzzleException(const KuzzleException& ke) 
    : status(ke.status), std::runtime_error(ke.getMessage()) {};

    virtual ~KuzzleException() throw() {};
    std::string getMessage() const;
  };
  struct typemap {
    void ICanThrow() throw(KuzzleException){}
  };
}

#endif