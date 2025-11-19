import 'package:flutter/material.dart';

class Name1 extends StatefulWidget {
  final String currentname;

  const Name1({super.key, required this.currentname});

  @override
  State<Name1> createState() => _Name1State();
}

class _Name1State extends State<Name1> {
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    nameController.text = widget.currentname;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Name", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                labelText: "Your Name",
                
                suffixIcon: Icon(Icons.emoji_emotions_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "People will see this name if you interact with them and they don't have you saved as a contact",
              style: TextStyle(color: const Color.fromARGB(255, 177, 174, 174)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 400),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, nameController.text.trim());
                  final name = nameController.text.trim();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                child: Text(
                  "Save",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
