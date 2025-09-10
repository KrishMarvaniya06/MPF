import 'package:flutter/material.dart';
import 'package:untitled/krish_350/MPF-main/lab-18/student_model.dart';

import '../lab-18/p2/student_model.dart';

class list extends StatelessWidget {
  list({super.key});

  List<Student> students =[
    Student(id: 1,name: 'abc',age: 18),
    Student(id: 2,name: 'abcd',age: 19),
    Student(id: 3,name: 'abcde',age: 20),
    Student(id: 4,name: 'abcdef',age: 21),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Demo'),
      ),
      body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index){
            Student student = students[index];
            return ListTile(
              title: Text(student.name!),
              subtitle: Text(student.age.toString()),
            );
          }
      ),
    );
  }
}


