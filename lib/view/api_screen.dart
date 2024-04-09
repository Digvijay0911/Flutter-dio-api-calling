import 'package:flutter/material.dart';
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
              },
              child: const Text(
                "Fetch Data",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ))
        ],
      ),
    );
  }
}
