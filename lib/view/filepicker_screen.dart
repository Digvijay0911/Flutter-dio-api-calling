import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

// --------Global variables------------------
File file = File(
    '/Users/koptotech/Library/Developer/CoreSimulator/Devices/831B44E5-1CA4-4FAC-B939-3460C9B2C447/data/Containers/Data/Application/EBDA606E-AA85-43E9-B7AA-B4E97747E5BF/tmp/IMG_0005-1712699126618.jpeg');

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
        print(file);
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
              child: const Text("Pick File"))
        ],
      ),
    );
  }
}
