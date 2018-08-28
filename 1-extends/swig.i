%module kuzzlesdk
%extend kuzzleio::options {
    options() {
        options *o = kuzzle_new_options();
        return o;
    }
 
    ~options() {
        free($self);
    }
}

%include "kuzzle.hpp"