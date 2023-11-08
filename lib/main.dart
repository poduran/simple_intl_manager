import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_intl_manager/pages/home.dart';
import 'package:simple_intl_manager/providers/special_themes.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      home: const HomePage(),
    );
  }
}
