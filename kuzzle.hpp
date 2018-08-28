#ifndef AUTH_HPP
#define AUTH_HPP

#include <string>

namespace kuzzleio {
  class auth {
		public:
		int toIgnore;
		int to_rename;

		void rename_me(const std::string& arg) {}
	};

  class server {
    public:
    int rename_me;

    long now() {return 1535466635;}
  };

  class listener {
    public:
    virtual void trigger() = 0;
    virtual ~listener();
  };
}

#endif