import 'package:flutter/material.dart';
import 'package:task_5/pages/home_page.dart';

void main() {
  runApp(const Task5());
}

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
