import 'package:dio/dio.dart';

class ApiMethods {
// 1. Get
  static void fetchData() async {
    var dio = Dio();
    var response =
        await dio.get("https://jsonplaceholder.typicode.com/todos/1");
    print(response.statusCode);
    print(response.data.toString());
  }

  // 2. Post
  static void addData() async {
    var dio = Dio();
    var response =
        await dio.post("https://jsonplaceholder.typicode.com/posts", data: {
      "name": "Hemant",
      "email": "hemant123@gmail.com",
    });
    print(response.statusCode);
    print(response.data.toString());
  }

  // 3. Get + Post
  static void addAndFetchData() async {
    var dio = Dio();
    var response = await Future.wait([
      dio.get("https://jsonplaceholder.typicode.com/posts"),
      dio.post("https://jsonplaceholder.typicode.com/posts"),
    ]);
    print(response[0].statusCode);
    print(response[0].data.toString());

    print(response[1].statusCode);
    print(response[1].data.toString());
  }
}
