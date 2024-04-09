import 'package:flutter/material.dart';
import 'package:flutter_dio_api_calling/api/api_method.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                ApiMethods.fetchData();
              },
              child: const Text(
                "Fetch Data (GET)",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
          TextButton(
              onPressed: () {
                ApiMethods.addData();
              },
              child: const Text(
                "Add Data (POST)",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ))
        ],
      ),
    );
  }
}
