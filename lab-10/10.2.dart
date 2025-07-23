//10.2 -  W.A.P. to Design Music Player Ul using Card, Text and Buttons. (B)

import 'package:flutter/material.dart';

class TenTwo extends StatelessWidget {
  const TenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(

          child: Container(
              width: 500,
              height: 200,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.album,size: 100,),
                      Column(
                        children: [
                          Text("    Song Name",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30),),
                          Text("Author Name",style: TextStyle(fontWeight:FontWeight.normal,fontSize: 20),),
                        ],
                      )
                    ],
                  ),
                  LinearProgressIndicator(value: 0.5,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.skip_previous_outlined),
                        Icon(Icons.pause),
                        Icon(Icons.skip_next),
                      ],
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
