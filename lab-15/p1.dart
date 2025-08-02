import 'package:flutter/material.dart';

class l15_1 extends StatelessWidget {
  l15_1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab view'),
            bottom: TabBar(
              labelColor: Colors.red,
                tabs: [
                Tab(
                  child: Text('Home'),
                  icon: Icon(Icons.home),
                ),
                Tab(
                  child: Text('About'),
                  icon: Icon(Icons.info),
                ),
                  Tab(
                    child: Text('Contact'),
                    icon: Icon(Icons.call),
                  )
              ]),
          ),
          body: TabBarView(children: [
            Container(
              child: Center(child: Text('Home Page',style: TextStyle(fontSize: 30),)),
            ),
            Container(
              child: Center(child: Text('About Page',style: TextStyle(fontSize: 30),)),
            ),
            Container(
              child: Center(child: Text('Contact Page',style: TextStyle(fontSize: 30),)),
            )
          ]),
        ));
  }
}
