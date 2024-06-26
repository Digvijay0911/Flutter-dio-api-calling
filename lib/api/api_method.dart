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

  // 4. PUT
  static void updateData() async {
    var dio = Dio();
    var response =
        await dio.put("https://jsonplaceholder.typicode.com/posts/1", data: {
      "name": "Abrar",
      "email": "abrar123@gmail.com",
    });
    print(response.statusCode);
    print(response.data.toString());
  }

  // 5. Patch (Adding some data to the exisiting data)
  static void patchData() async {
    var dio = Dio();
    var response = await dio.patch(
        "https://jsonplaceholder.typicode.com/posts/1",
        data: {"name": "Vishal", "title": "Hey Good Morning"});
    print(response.statusCode);
    print(response.data.toString());
  }

  // 6. Delete
  static void deleteData() async {
    var dio = Dio();
    var response =
        await dio.get("https://jsonplaceholder.typicode.com/posts/2");
    print(response.data.toString());

    var res = await dio.delete("https://jsonplaceholder.typicode.com/posts/2");
    print(res.statusCode);
    print(res.data.toString());
  }
}
