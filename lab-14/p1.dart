import 'package:flutter/material.dart';

class PageView3D extends StatelessWidget {
  PageView3D({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("simple 3D page"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.8
        ),
        children: [
          buildPage('page 1',Colors.red),
          buildPage('page 2',Colors.blue),
          buildPage('page 3',Colors.green),
          buildPage('page 4',Colors.yellow),
        ],
      ),
    );
  }
  Widget buildPage(String title, Color color){
    return Card(
      color: color,
      child: Center(
        child: Text(title,style: TextStyle(fontSize: 30,color: Colors.white),),
      ),
    );
  }
}
