import 'package:dio/dio.dart';

class ApiMethods {

// 1. Get
  static void fetchData()async{
    var dio = Dio();
    var response = await dio.get("https://jsonplaceholder.typicode.com/todos/1");
    print(response.statusCode);
    print(response.data.toString());
  } 
}