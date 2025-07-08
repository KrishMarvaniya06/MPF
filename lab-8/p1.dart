
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});
  TextEditingController controller=TextEditingController(text:'0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: controller,
            textAlign: TextAlign.end,
style: TextStyle(
  fontSize: 90,
),
            decoration: InputDecoration(
                border:InputBorder.none
            ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(text: 'ac'),
                  button(text: '7'),
                  button(text: '4'),
                  button(text: '1'),
                  button(text: '00')


                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(text: '()'),
                  button(text: '8'),
                  button(text: '5'),
                  button(text: '2'),
                  button(text: '0')


                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(text: '%'),
                  button(text: '9'),
                  button(text: '6'),
                  button(text: '3'),
                  button(text: '.')


                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(text: '/'),
                  button(text: '*'),
                  button(text: '-'),
                  button(text: '+'),
                  button(text: '=')


                ],

              ),
            ],
          )
        ],
      ),
    );
  }
  Widget button({required String text, Color bgcolor = Colors.white} )
  {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
            shape: CircleBorder(),
        textStyle: TextStyle(height: 5)
      ),
      onPressed: (){}, child: Text(text),);
  }
}
