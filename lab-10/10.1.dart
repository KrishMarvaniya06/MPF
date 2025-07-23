// 10.1 -  W.A.P. to Design To-Do List Ul using Column, Text, Checkbox, ElevatedButton, and Padding. (A)

import 'package:flutter/material.dart';
class TenOne extends StatelessWidget {
  const TenOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:SingleChildScrollView(
        child: Column(
          children: [
            To_Do_List(Texts: "Darshan University",),
            To_Do_List(Texts: "Computer Engineering",checked: true),
            To_Do_List(Texts: "BCA",),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){} ,child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Add "),
      ),),
    );
  }
}


Widget To_Do_List({required String Texts, bool checked = false})
{
  return ListTile(
    title: Text(Texts),
    trailing: Checkbox(value: checked, onChanged: (value){}),
  );
}