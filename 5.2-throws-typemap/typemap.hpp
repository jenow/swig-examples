#ifndef TYPEMAP_HPP
#define TYPEMAP_HPP

#include <stdexcept>
#include <string>

namespace kuzzleio {
  struct KuzzleException : std::runtime_error {
    int status;
 
    KuzzleException(int status=500, const std::string& message="Internal Exception"){}
    KuzzleException(const KuzzleException& ke)
    : status(ke.status), std::runtime_error(ke.getMessage()) {}
 
    virtual ~KuzzleException() throw() {}
    std::string getMessage() const;
  };

  struct typemap {
    void ICanThrow() throw(KuzzleException) {}
  };
}

#endif