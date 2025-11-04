import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  final TextEditingController email = TextEditingController();
  final TextEditingController number = TextEditingController();
  String? emailerror;
  String? numbererror;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Edit Account", style: TextStyle(fontSize: 20)),
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 70, backgroundColor: Colors.black),
                      SizedBox(width: 40),
                      Text("Change/Delete Photo", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: "Email",
                      errorText: emailerror,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        emailerror = validateemail(value);
                      });
                    },
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: number,
                    maxLength: 10,
                    decoration: InputDecoration(
                      labelText: "Phonenumber",
                      errorText: numbererror,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        numbererror = validatenumber(value);
                      });
                    },
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Address",
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 50,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      emailerror = validateemail(email.text);
                      numbererror = validatenumber(number.text);
                    });
                    if (emailerror == null && numbererror == null) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("saved succesfull")));
                    }
                  },
                  child: Text("Save"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(550, 50),
                    backgroundColor: const Color.fromARGB(255, 232, 182, 33),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String? validatenumber(String number) {
  if (number.isEmpty) {
    return "enter number";
  }
  if (!RegExp(r'^[0-9]{10}$').hasMatch(number)){
    return "enter valid phonenumber";
    
  }
  
  return null;
}

String? validateemail(String email) {
  
  if (email.isEmpty) {
    return " please emter email";
  }if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
    return "enter a valid email ";
  }
  return null;
}
