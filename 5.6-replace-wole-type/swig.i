%module kuzzlesdk

%rename (_my_json_method) kuzzleio::kuzzle::my_json_method(const std::string& json_body);
%javamethodmodifiers kuzzleio::kuzzle::my_json_method(const std::string& json_body) "private";

%typemap(javacode) kuzzleio::kuzzle %{
  public org.json.JSONObject my_json_method(org.json.JSONObject json_body) throws org.json.JSONException {
    String res = my_json_method(json_body.toString());

    return new org.json.JSONObject(res);
  }
%}

%include "kuzzle.hpp"