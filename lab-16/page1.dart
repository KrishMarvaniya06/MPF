import 'package:flutter/material.dart';
import 'package:untitled/krish_350/MPF-main/lab-16/page2.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('page   -1'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => page2()));
            },
                child: Text('Go to page 2')
            )
          ],
        ),
      ),
    );
  }
}