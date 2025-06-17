import 'package:flutter/material.dart';
class P3 extends StatelessWidget {
  const P3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Column(
        children:[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color:Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color:Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color:Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color:Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    color:Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    color:Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color:Colors.purple,
                  ),
                ),
                Expanded(
                  child: Container(
                    color:Colors.lightBlue,
                  ),
                ),
                Expanded(
                  child: Container(
                    color:Colors.cyanAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
