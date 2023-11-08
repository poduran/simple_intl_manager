import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:simple_intl_manager/models/project.dart';
import 'package:simple_intl_manager/widgets/nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Row(children: [
      const Nav(),
      Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
                onPressed: () {
                  newproject();
                },
                icon: const Icon(Icons.create_new_folder_outlined),
                label: const Text('New Project')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
                onPressed: () {
                  openProject();
                },
                icon: const Icon(Icons.folder_open_outlined),
                label: const Text('Open Project')),
          )
        ]),
      ]))
    ])));
  }

  openProject() async {
    FilePickerResult? res =
        await FilePicker.platform.pickFiles(allowedExtensions: [".SimProj"]);

    if (res != null) {
      File f = File(res.files.single.path!);

      projectFromJson(await f.readAsString());
    }
  }

  newproject() {}
}
