import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(home: Bloodgroup()));
}

class Bloodgroup extends StatefulWidget {
  const Bloodgroup({super.key});

  @override
  State<Bloodgroup> createState() => _BloodgroupState();
}

class _BloodgroupState extends State<Bloodgroup> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  String? selectedGroup;

  final List<String> bloodGroups = [
    "A+",
    "A-",
    "B+",
    "B-",
    "O+",
    "O-",
    "AB+",
    "AB-",
  ];

  Future<void> saveDonor() async {
    if (nameController.text.isEmpty ||
        phoneController.text.isEmpty ||
        selectedGroup == null) {
      return;
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> donorList = prefs.getStringList("donors") ?? [];

    Map<String, dynamic> donorData = {
      "name": nameController.text,
      "phone": phoneController.text,
      "group": selectedGroup,
    };

    donorList.add(jsonEncode(donorData));
    await prefs.setStringList("donors", donorList);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Groups", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
              ],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your name";
                }
                if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                  return "Only alphabets allowed";
                }
                return null;
              },
            ),

            SizedBox(height: 15),

            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: "Phone number",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),
              ],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter phone number";
                }
                if (value.length != 10) {
                  return "Phone number must be 10 digits";
                }
                return null;
              },
            ),

            SizedBox(height: 15),

            Text("Select Group", style: TextStyle(fontSize: 16)),

            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedGroup,
                  hint: Text("Select Group"),
                  isExpanded: true,
                  items: bloodGroups
                      .map(
                        (group) =>
                            DropdownMenuItem(value: group, child: Text(group)),
                      )
                      .toList(),
                  onChanged: (value) => setState(() => selectedGroup = value),
                ),
              ),
            ),

            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: saveDonor,
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
