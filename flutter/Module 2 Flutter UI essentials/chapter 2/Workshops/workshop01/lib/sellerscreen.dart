
import 'package:flutter/material.dart';

class Workshop1 extends StatefulWidget {
  const Workshop1({super.key});

  @override
  State<Workshop1> createState() => _Workshop1State();
}

class _Workshop1State extends State<Workshop1> {
  int _selectedValue = 1;
  final List<String> _dropdownItems = ['Cat', 'Dog', 'Bird', 'Fish'];
  bool isChecked = false;
  double currentAge = 1; // Default age
  String? _selectedBreed;
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/catpost.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Pet Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                isExpanded: true,
                hint: const Text("Breed"),
                value: _selectedBreed,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedBreed = newValue;
                  });
                },
                items: _dropdownItems
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<int>(
                  title: const Text("Male"),
                  value: 1,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: const Text("Female"),
                  value: 2,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
               Checkbox(value: isChecked, onChanged: (bool? value) {
                setState(() {
                  isChecked=value??false;
                });
               }),
                const Text("vaccinated")
              ],
            ),
          ],
        ),
      ),
    );
  }
}


