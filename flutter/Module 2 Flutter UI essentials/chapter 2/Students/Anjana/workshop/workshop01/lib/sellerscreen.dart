
import 'package:flutter/material.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  final List<String> _dropdownItems = ['Cat', 'Dog', 'Bird', 'Fish'];
  bool isChecked = false;
  double currentAge = 1;
  int _selectedValue = 1;
  String? _selectedDropdownItem;
  double sliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Pet Details")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/catpost.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            const SizedBox(height: 20),
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
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                value: _selectedDropdownItem,
                hint: const Text("Breed"),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedDropdownItem = newValue;
                  });
                },
                items: _dropdownItems.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<int>(
                    title: const Text("Male"),
                    value: 1,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<int>(
                    title: const Text("Female"),
                    value: 2,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                  const Text("Vaccinated"),
                ],
              ),
              
            ),Center(child: Slider(value: sliderValue,min: 0,max: 100,divisions: 100,label: sliderValue.toStringAsFixed(0), 
            onChanged: (double newValue){setState(() {sliderValue = newValue;
              
            });}),)

          ],
          
        ),
      ),
    );
  }
}