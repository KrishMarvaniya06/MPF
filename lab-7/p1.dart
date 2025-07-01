import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Image.asset Example')),
        body: Center(
          child: Image.asset('assets/images/my_image.png'),
        ),
      ),
    );
  }
}
