import 'package:flutter/material.dart';

void main() {
  runApp(SurveyApp());
}

class SurveyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Survey Form',
      debugShowCheckedModeBanner: false,
      home: SurveyForm(),
    );
  }
}

class SurveyForm extends StatefulWidget {
  @override
  _SurveyFormState createState() => _SurveyFormState();
}

class _SurveyFormState extends State<SurveyForm> {
  TextEditingController nameController = TextEditingController();
  String? gender = '';
  bool likesFlutter = false;
  bool likesDart = false;

  void submitForm() {
    String name = nameController.text;
    String favs = "";
    if (likesFlutter) favs += "Flutter ";
    if (likesDart) favs += "Dart ";

    String message = '''
Name: $name
Gender: ${gender ?? 'Not selected'}
Interests: $favs
    ''';

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Survey Result"),
        content: Text(message),
        actions: [
          TextButton(
            child: Text("OK"),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Survey Form")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Full Name", style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
            SizedBox(height: 20),

            Text("Gender", style: TextStyle(fontWeight: FontWeight.bold)),
            RadioListTile(
              title: Text("Male"),
              value: "Male",
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value),
            ),
            RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value),
            ),

            SizedBox(height: 20),
            Text("What do you like?", style: TextStyle(fontWeight: FontWeight.bold)),
            CheckboxListTile(
              title: Text("Flutter"),
              value: likesFlutter,
              onChanged: (value) => setState(() => likesFlutter = value!),
            ),
            CheckboxListTile(
              title: Text("Dart"),
              value: likesDart,
              onChanged: (value) => setState(() => likesDart = value!),
            ),

            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: submitForm,
                child: Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
