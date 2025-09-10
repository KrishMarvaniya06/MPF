import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(home: LocationDropdowns()));
}

class LocationDropdowns extends StatefulWidget {
  @override
  _LocationDropdownsState createState() => _LocationDropdownsState();
}

class _LocationDropdownsState extends State<LocationDropdowns> {
  List countries = [];
  List states = [];
  List cities = [];

  String? selectedCountry;
  String? selectedState;
  String? selectedCity;

  @override
  void initState() {
    super.initState();
    fetchCountries();
  }

  // Fetch countries
  Future<void> fetchCountries() async {
    final response = await http.get(Uri.parse('https://example.com/api/countries'));
    if (response.statusCode == 200) {
      setState(() {
        countries = json.decode(response.body);
      });
    }
  }

  // Fetch states by country
  Future<void> fetchStates(String countryId) async {
    final response = await http.get(Uri.parse('https://example.com/api/states?country_id=$countryId'));
    if (response.statusCode == 200) {
      setState(() {
        states = json.decode(response.body);
        selectedState = null;
        cities = [];
        selectedCity = null;
      });
    }
  }

  // Fetch cities by state
  Future<void> fetchCities(String stateId) async {
    final response = await http.get(Uri.parse('https://example.com/api/cities?state_id=$stateId'));
    if (response.statusCode == 200) {
      setState(() {
        cities = json.decode(response.body);
        selectedCity = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Location Dropdowns')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Country Dropdown
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Select Country'),
              value: selectedCountry,
              items: countries.map<DropdownMenuItem<String>>((country) {
                return DropdownMenuItem(
                  value: country['id'].toString(),
                  child: Text(country['name']),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountry = value;
                });
                fetchStates(value!);
              },
            ),
            SizedBox(height: 20),

            // State Dropdown
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Select State'),
              value: selectedState,
              items: states.map<DropdownMenuItem<String>>((state) {
                return DropdownMenuItem(
                  value: state['id'].toString(),
                  child: Text(state['name']),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedState = value;
                });
                fetchCities(value!);
              },
            ),
            SizedBox(height: 20),

            // City Dropdown
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Select City'),
              value: selectedCity,
              items: cities.map<DropdownMenuItem<String>>((city) {
                return DropdownMenuItem(
                  value: city['id'].toString(),
                  child: Text(city['name']),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
