import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_intl_manager/models/project.dart';
import 'package:simple_intl_manager/widgets/nav.dart';

class HomepageLoaded extends StatefulWidget {
  const HomepageLoaded({super.key, required this.proj});

  final Project? proj;

  @override
  State<HomepageLoaded> createState() => _HomepageLoadedState();
}

class _HomepageLoadedState extends State<HomepageLoaded> {
  TextEditingController controllerDefaultLanguage = TextEditingController();
  TextEditingController controllerAditionalLanguage = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.proj != null) {
      controllerDefaultLanguage.text = widget.proj!.primaryLanguages;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Nav(
        proj: widget.proj,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Text('Default Language')),
            ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 100),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controllerDefaultLanguage,
                      decoration: const InputDecoration(hintText: 'en_US'),
                    ))),
            const Padding(
                padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                child: Text('Aditional Languages')),
            Row(children: [
              ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 100),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controllerAditionalLanguage,
                        decoration: const InputDecoration(hintText: 'es_AR'),
                      ))),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add_outlined))
            ]),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 150),
              child: ReorderableListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                onReorder: (oldIndex, newIndex) async {
                  setState(() {
                    if (oldIndex < newIndex) newIndex -= 1;
                  });
            
                  final ProjectIten item =
                      widget.proj!.projectItens.removeAt(oldIndex);
                  widget.proj!.projectItens.insert(newIndex, item);
                },
                children: [
                  for (int i = 0; i < widget.proj!.languages.length; i++)
                    ListTile(
                      key: Key('$i'),
                      title: Text(widget.proj!.languages[i]),
                    )
                ],
              ),
            )
          ],
        ));
  }
}
