class APIReesponse<T>{
  T data;
  bool error;
  String errorMessage;

  APIReesponse({this.data,this.errorMessage,this.error = false});

}