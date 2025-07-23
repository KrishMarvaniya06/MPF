import 'package:flutter/material.dart';

class lab12_1 extends StatelessWidget {
  lab12_1({super.key});


  List <Map> con=[
    {
      'name':'Krish',
      'number':9104362458
    },
    {
      'name':'Naman',
      'number':123456789
    },
    {
      'name':'Preet',
      'number':456789123
    },
    {
      'name':'Manan',
      'number':789456123
    },
    {
      'name':'Ved',
      'number':963852741
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: ListView.builder(
        itemCount: con.length,
        itemBuilder: (context, index){
          Map data=con[index];
          return Card(
            child: ListTile(
              title: Text(data['name']),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                child: Text(data['name'][0]),
              ),
              subtitle: Text(data['number'].toString()),
            ),
          );
        },
      ),
    );
  }
}
