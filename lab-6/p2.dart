import 'package:flutter/material.dart';

void main() {
  runApp(const RegistrationApp());
}

class RegistrationApp extends StatelessWidget {
  const RegistrationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegistrationScreen(),
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

enum Gender { male, female}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Gender? _selectedGender;
  String? _selectedCountry;
  bool _acceptTerms = false;

  bool _obscurePassword = true;

  final List<String> _countries = ['USA', 'Canada', 'India', 'UK', 'Australia'];

  List<String> _hobbies = ['Reading', 'Traveling', 'Cooking', 'Gaming'];
  List<String> _selectedHobbies = [];


  void _onHobbyChanged(bool? selected, String hobby) {
    if (selected == null) return;
    setState(() {
      if (selected) {
        _selectedHobbies.add(hobby);
      } else {
        _selectedHobbies.remove(hobby);
      }
    });
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_selectedGender == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a gender')),
        );
        return;
      }

      if (_selectedCountry == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a country')),
        );
        return;
      }

      if (!_acceptTerms) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('You must accept the terms and conditions')),
        );
        return;
      }

      // All validations passed
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registration Successful!')),
      );

      // You can access the data here
      print('Name: ${_nameController.text}');
      print('Email: ${_emailController.text}');
      print('Password: ${_passwordController.text}');
      print('Gender: $_selectedGender');
      print('Country: $_selectedCountry');
      print('Accepted Terms: $_acceptTerms');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration Screen')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),

              // Name
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val == null || val.isEmpty) return 'Please enter your name';
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Email
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (val) {
                  if (val == null || val.isEmpty) return 'Please enter your email';
                  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                  if (!emailRegex.hasMatch(val)) return 'Enter a valid email';
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Password with visibility toggle

              const SizedBox(height: 24),

              const Text('Gender', style: TextStyle(fontWeight: FontWeight.bold)),
              ListTile(
                title: const Text('Male'),
                leading: Radio<Gender>(
                  value: Gender.male,
                  groupValue: _selectedGender,
                  onChanged: (Gender? val) {
                    setState(() {
                      _selectedGender = val;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Female'),
                leading: Radio<Gender>(
                  value: Gender.female,
                  groupValue: _selectedGender,
                  onChanged: (Gender? val) {
                    setState(() {
                      _selectedGender = val;
                    });
                  },
                ),
              ),

              const SizedBox(height: 24),

              const Text('Country', style: TextStyle(fontWeight: FontWeight.bold)),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                hint: const Text('Select Country'),
                value: _selectedCountry,
                items: _countries
                    .map((country) => DropdownMenuItem(value: country, child: Text(country)))
                    .toList(),
                onChanged: (String? val) {
                  setState(() {
                    _selectedCountry = val;
                  });
                },
                validator: (val) => val == null ? 'Please select a country' : null,
              ),

              const SizedBox(height: 24),

              // Hobbies checkboxes
              const Text(
                'Hobbies',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ..._hobbies.map(
                    (hobby) => CheckboxListTile(
                  title: Text(hobby),
                  value: _selectedHobbies.contains(hobby),
                  onChanged: (selected) => _onHobbyChanged(selected, hobby),
                ),
              ),

              const SizedBox(height: 24),

              // Accept terms checkbox
              Center(
                child: ElevatedButton(
                  onPressed: _submit,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    child: Text('Register', style: TextStyle(fontSize: 18)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
