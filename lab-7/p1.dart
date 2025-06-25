import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      home: CalculatorUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorUI extends StatefulWidget {
  @override
  _CalculatorUIState createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';

  void _calculate(String operator) {
    final double num1 = double.tryParse(_controller1.text) ?? 0;
    final double num2 = double.tryParse(_controller2.text) ?? 0;
    double res = 0;

    switch (operator) {
      case '+':
        res = num1 + num2;
        break;
      case '-':
        res = num1 - num2;
        break;
      case '*':
        res = num1 * num2;
        break;
      case '/':
        res = num2 != 0 ? num1 / num2 : 0;
        break;
    }

    setState(() {
      _result = 'Result: $res';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter first number'),
            ),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter second number'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () => _calculate('+'), child: Text('+')),
                ElevatedButton(onPressed: () => _calculate('-'), child: Text('-')),
                ElevatedButton(onPressed: () => _calculate('*'), child: Text('*')),
                ElevatedButton(onPressed: () => _calculate('/'), child: Text('/')),
              ],
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
