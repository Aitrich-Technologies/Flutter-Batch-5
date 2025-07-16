import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Mia",
            style: TextStyle(fontSize: 30),
          ),
          const Card(
            elevation: 4, // Elevation of the card
            margin: EdgeInsets.all(20), // Margin around the card
            child: Padding(
              padding: EdgeInsets.all(16.0), // Padding inside the card
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Home",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
          const Card(
            elevation: 4, // Elevation of the card
            margin: EdgeInsets.all(20), // Margin around the card
            child: Padding(
              padding: EdgeInsets.all(16.0), // Padding inside the card
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favorite",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          const Card(
            elevation: 4, // Elevation of the card
            margin: EdgeInsets.all(20), // Margin around the card
            child: Padding(
              padding: EdgeInsets.all(16.0), // Padding inside the card
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          const Card(
            elevation: 4, // Elevation of the card
            margin: EdgeInsets.all(20), // Margin around the card
            child: Padding(
              padding: EdgeInsets.all(16.0), // Padding inside the card
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Settings",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              child: const Text(
                "Log out",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
