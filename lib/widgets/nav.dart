import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_intl_manager/models/project.dart';
import 'package:simple_intl_manager/pages/home.dart';
import 'package:simple_intl_manager/providers/special_themes.dart';

class Nav extends StatefulWidget {
  const Nav({super.key, required this.proj, required this.body});

  final Project? proj;
  final Widget body;

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  bool isLight = false;

  @override
  Widget build(BuildContext context) {
    bool isLoaded = widget.proj != null;

    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Container(
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Tooltip(
                    message: 'Home page',
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: isLoaded
                              ? null
                              : () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                          child: const Icon(Icons.home_outlined)),
                    ),
                  ),
                  Tooltip(
                    message: 'Configurations',
                    child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: isLoaded ? () {} : null,
                            child: const Icon(Icons.settings_outlined))),
                  ),
                  Tooltip(
                    message: 'Translations',
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: isLoaded ? () {} : null,
                          child: const Icon(Icons.text_fields_outlined)),
                    ),
                  ),
                  Expanded(child: Container()),
                  kDebugMode
                      ? Padding(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: Icon(Icons.home)))
                      : Container(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Switch(
                          value: isLight,
                          onChanged: ((value) {
                            final provider = Provider.of<ThemeProvider>(context,
                                listen: false);
                            setState(() {
                              isLight = !isLight;
                            });
                            isLight
                                ? provider.setLightMode()
                                : provider.setDarkMode();
                          })),
                      Icon(isLight ? Icons.dark_mode : Icons.light_mode)
                    ],
                  )
                ],
              ),
            ),
            Expanded(child: widget.body)
          ],
        ),
      ),
    );
  }
}
