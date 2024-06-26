import 'package:flutter/material.dart';
import 'package:flutter_dio_api_calling/api/api_method.dart';
import 'package:flutter_dio_api_calling/view/filepicker_screen.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "dio api calling",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FilePickerScreen()));
              },
              child: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 10, bottom: 40),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
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
                )),
            ElevatedButton(
                onPressed: () {
                  ApiMethods.deleteData();
                },
                child: const Text(
                  "Delete Data (DELETE)",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
