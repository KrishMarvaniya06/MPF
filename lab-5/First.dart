import 'package:flutter/material.dart';
class First extends StatelessWidget
{
  const First({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Wolld',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            backgroundColor: Colors.yellow,
            fontSize: 40,
            fontStyle: FontStyle.italic
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
