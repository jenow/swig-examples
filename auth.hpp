#ifndef AUTH_HPP
#define AUTH_HPP

#include <string>

namespace kuzzleio {
  class auth {
		public:
		int toIgnore;
		int to_rename;

		void rename_me(std::string& arg) {};
	};
}

#endif