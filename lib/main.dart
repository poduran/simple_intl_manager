import 'package:flutter/material.dart';
import 'package:simple_intl_manager/pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Color(0xff006e7d)),
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xff006e7d),
          onPrimary: Colors.white,
          secondary: Colors.blueGrey,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.black87,
          onBackground: Colors.black87,
          surface: Colors.transparent,
          onSurface: Colors.white,
        )),
      home: HomePage(),
    );
  }
}
