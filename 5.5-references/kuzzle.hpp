#ifndef KUZZLE_HPP
#define KUZZLE_HPP

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