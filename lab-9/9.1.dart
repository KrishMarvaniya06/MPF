// 9.1 -  W.A.P. to Design Feedback Form Ul using Column, TextFormField, ElevatedButton, and SnackBar. (A)

import 'package:flutter/material.dart';

class NineOne extends StatelessWidget {
  const NineOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text(
              "How would you describe your mood after using our products for the first time?",
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(
                    abc: Icon(
                      Icons.sentiment_satisfied_alt,
                      color: Colors.black87,
                    ),
                  ),
                  button(
                    abc: Icon(
                      Icons.sentiment_neutral_rounded,
                      color: Colors.purple,
                    ),
                  ),
                  button(
                    abc: Icon(
                      Icons.sentiment_dissatisfied_outlined,
                      color: Colors.pink,
                    ),

                  ),
                ],
              ),

            ),
            SizedBox(height: 20,),
            Text("How would you rate this products."),
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button(abc: Text("1")),
                    button(abc: Text("2")),
                    button(abc: Text("3")),
                    button(abc: Text("4")),
                    button(abc: Text("5")),
                  ],
                ),
                SizedBox(height: 20,),
                Text("Your Feedback",style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      hintText: "Enter your feedback",
                      border: OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(10)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Your Feedback is submmited successfully")));
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//-------------------------------------------------------------------------------
ElevatedButton button({required var abc}) {
  return ElevatedButton(
    onPressed: () {},
    child: abc,
    style: ElevatedButton.styleFrom(
      shape: CircleBorder(),
      backgroundColor: Colors.white,
    ),
  );
}
//-------------------------------------------------------------------------------
