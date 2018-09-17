#ifndef LISTENERS_HPP
#define LISTENERS_HPP

#include <string>

namespace kuzzleio {

  enum Event {
    CONNECTED,
    DISCONNECTED
  };

  struct kuzzle {
    void f(Event& event){};
  };
}

#endif