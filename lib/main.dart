import 'package:flutter/material.dart';
import 'package:nested_scroll_view_test/default_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultScreen(),
    );
  }
}
