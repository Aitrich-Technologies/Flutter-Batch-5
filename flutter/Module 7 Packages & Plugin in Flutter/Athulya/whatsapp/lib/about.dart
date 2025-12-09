
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  final String currentAbout; 

  const AboutPage({super.key, required this.currentAbout});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late TextEditingController aboutController;

  List<String> presetAbouts = [
    "Available",
    "Busy",
    "At the school",
    "At the movies",
    "At work",
    "Battery about to die",
    "Can't talk, WhatsApp only",
    "In a meeting",
    "At the gym",
    "Sleeping",
    "Urgent Calls only",
  ];

  @override
  void initState() {
    aboutController = TextEditingController(text: widget.currentAbout);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("About", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Currently Set To",
              style: TextStyle(color: Color.fromARGB(255, 177, 174, 174)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: aboutController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Edit About",
                labelStyle: TextStyle(color: Colors.white54),
                suffixIcon: const Icon(Icons.edit, color: Colors.white),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Select About",
              style: TextStyle(color: Color.fromARGB(255, 177, 174, 174)),
            ),
          ),

         
          Expanded(
            child: ListView.builder(
              itemCount: presetAbouts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    presetAbouts[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      aboutController.text = presetAbouts[index];
                    });
                  },
                );
              },
            ),
          ),

          
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, aboutController.text.trim());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
