#ifndef LISTENERS_HPP
#define LISTENERS_HPP

namespace kuzzleio {
  struct listener {
    virtual void trigger() = 0;
    virtual ~listener();
  };
}

#endif