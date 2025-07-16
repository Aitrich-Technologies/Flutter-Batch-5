import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          title: const Text("Signup"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/signup.jpg"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "First Name",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Last Name",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: TextField(
                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Password",
                style: TextStyle(fontSize: 20),
              ),
              const TextField(
                decoration: InputDecoration(
                  suffix: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[100]),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text('Success'),
                          content: Text('Account created successfully!'),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
