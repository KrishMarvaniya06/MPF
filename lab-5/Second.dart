import 'package:flutter/material.dart';


class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Controller Example',
      home: InputScreen(),
    );
  }
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  // Create a TextEditingController
  final TextEditingController _controller = TextEditingController();

  // Function to print input value
  void _printInput() {
    print('Input value: ${_controller.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // TextField with controller
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter something',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            // Button to print value
            ElevatedButton(
              onPressed: _printInput,
              child: Text('Print to Terminal'),
            ),
          ],
        ),
      ),
    );
  }
}
