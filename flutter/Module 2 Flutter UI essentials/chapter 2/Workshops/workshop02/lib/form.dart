import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final String _selectedGender = 'male';

  final List<String> _dropdownItems = [
    ' Cat',
    'Dog',
    'Bird',
    'Fish',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
        centerTitle: true,
        title: const Text(
          'Form',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Name',
              style: TextStyle(fontSize: 18.0),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(height: 18,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Description',style: TextStyle(fontSize: 18,),
              
              ),
              TextField(style: TextStyle(height: 10),
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: 'Enter description'),)
            ],),
         
            const SizedBox(height: 20.0),
            const Text(
              'Select an option',
              style: TextStyle(fontSize: 18.0),
            ),
            DropdownButton<String>(
              hint: const Text("Breed"),
              onChanged: (String) {},
              items: _dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Gender',
              style: TextStyle(fontSize: 18.0),
            ),
            Row(
              children: [
                Radio(
                  value: 'male',
                  groupValue: _selectedGender,
                  onChanged: (String) {},
                ),
                const Text('Male'),
                Row(children: [
                  Radio(value: 'Female', groupValue: _selectedGender, onChanged: (String) {},
                  ),
                  const Text('Female'),
                ],
                ),
              
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Age',
              style: TextStyle(fontSize: 18.0),
            ),
            Slider(
              value: 1,
              min: 1,
              max: 100,
              divisions: 100,
              onChanged: (double value) {},
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool) {},
                ),
                const Text('verify'),
              ],
            ),
            const SizedBox(height: 20.0),
            Container(
              child: Image.asset(
                'assets/catpost.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'This is some text with custom font',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
