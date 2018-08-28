#ifndef KUZZLE_HPP
#define KUZZLE_HPP

#include <string>

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
}

#endif