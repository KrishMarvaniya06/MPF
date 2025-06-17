import 'package:flutter/material.dart';
class P1 extends StatelessWidget {
  const P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Column(
        children:[
          Expanded(
            child: Container(
              color:Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              color:Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              color:Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
