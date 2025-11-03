import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  final TextEditingController phonenumber = TextEditingController();
  String? phonenumberError;
String? validatephonenumber(String phonenumber) {
  if (!RegExp(r'\d{10}$').hasMatch(phonenumber)) {
    return "phonenumber must be exactly 10 digit";
  }
  return null;
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("loginpage"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: phonenumber,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: InputDecoration(
                labelText: "PHONENUMBER",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  phonenumberError = validatephonenumber(value);
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  phonenumberError = validatephonenumber(phonenumber.text);
                });

                if (phonenumberError == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("submission sussceful")),
                  );
                }
              },
              child: Text("submitt"),
            ),
          ],
        ),
      ),
    );
  }
}

