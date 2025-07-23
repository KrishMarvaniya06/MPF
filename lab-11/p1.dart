import 'package:flutter/material.dart';

class l11_1 extends StatelessWidget {
  l11_1({super.key});

  List<int> numbers=[
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('List View',style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: numbers.map((number){
          return ListTile(
            title: Text(number.toString()),
          );
        }).toList()
      ),
    );
  }
}
