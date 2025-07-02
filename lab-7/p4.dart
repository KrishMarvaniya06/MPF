import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Widget Example',
      home: Scaffold(
        appBar: AppBar(title: Text('Text on Image using Stack')),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                'https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@1.5x.png', // Replace with your own image URL
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
