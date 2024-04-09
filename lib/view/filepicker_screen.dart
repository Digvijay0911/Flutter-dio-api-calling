import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

// --------Global variables------------------
File file = File("");

// ==========================================
class FilePickerScreen extends StatefulWidget {
  const FilePickerScreen({super.key});

  @override
  State<FilePickerScreen> createState() => _FilePickerScreenState();
}

class _FilePickerScreenState extends State<FilePickerScreen> {
  // -------------------------------------------
  void pickFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      setState(() {
        file = File(result.files.single.path ?? "");
      });
    }
  }

// ==============================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "File Picker",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.file(file),
          TextButton(
              onPressed: () {
                pickFile();
              },
              child: Text("Pick File"))
        ],
      ),
    );
  }
}
