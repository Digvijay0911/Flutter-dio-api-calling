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
          ElevatedButton(
              onPressed: () {
                ApiMethods.fetchData();
              },
              child: const Text(
                "Fetch Data (GET)",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
          ElevatedButton(
              onPressed: () {
                ApiMethods.addData();
              },
              child: const Text(
                "Add Data (POST)",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
          ElevatedButton(
              onPressed: () {
                ApiMethods.addAndFetchData();
              },
              child: const Text(
                "Add & Fetch Data (GET POST)",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
          ElevatedButton(
              onPressed: () {
                ApiMethods.updateData();
              },
              child: const Text(
                "Edit Data (PUT)",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
              ElevatedButton(
              onPressed: () {
                ApiMethods.patchData();
              },
              child: const Text(
                "Edit Data (PATCH)",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ))
        ],
      ),
    );
  }
}
