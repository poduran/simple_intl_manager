import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Tooltip(
            message: 'Homepage',
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: const Icon(Icons.home_outlined)),
            ),
          ),
          Tooltip(
            message: 'Translations',
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: const Icon(Icons.text_fields_outlined)),
            ),
          )
        ],
      ),
    );
  }
}
