import 'package:flutter/material.dart';

class SellerScreen extends StatelessWidget {
  SellerScreen({super.key});

  // List of items for the dropdown
  final List<String> _dropdownItems = [
    'Cat',
    'Dog',
    'Bird',
    'Fish',
  ];
  final bool _isChecked = false;
  final double _currentAge = 1; // Default age
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Image.asset(
            'assets/catpost.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Pet Nmae',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<String>(
            isExpanded: true,
            hint: const Text("Breed"),
            onChanged: (String) {},
            items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    ));
  }
}
