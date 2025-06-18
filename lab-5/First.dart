import 'package:flutter/material.dart';



class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontSize: 30,            // Changing font size
            color: Colors.blue,      // Changing text color
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
