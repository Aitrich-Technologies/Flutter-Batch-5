import 'package:flutter/material.dart';

class Activity4 extends StatefulWidget {
  const Activity4({super.key});

  @override
  State<Activity4> createState() => _Activity4State();
}

class _Activity4State extends State<Activity4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Settings", style: TextStyle(fontSize: 25)),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.network_cell),
            title: Text("Mobile Network"),
            subtitle: Text("Manage Network settings"),
          ),
          Divider(
            color: const Color.fromARGB(255, 84, 79, 79),
            thickness: 1,
            indent: 3,
            endIndent: 3,
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Language"),
            subtitle: Text("Change App Language"),
          ),
          Divider(
            color: const Color.fromARGB(255, 84, 79, 79),
            thickness: 1,
            indent: 3,
            endIndent: 3,
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.color_lens_outlined),
            title: Text("Theme"),
            subtitle: Text("Choose light or dark theme"),
          ),
          Divider(
            color:const Color.fromARGB(255, 84, 79, 79),
            thickness: 1,
            indent: 3,
            endIndent: 3,
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.volume_up),
            title: Text("Sounds & Vibration"),
            subtitle: Text("Adjust sound and vibration settings"),
          ),
          Divider(
            color:const Color.fromARGB(255, 84, 79, 79),
            thickness: 1,
            indent: 3,
            endIndent: 3,
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("More Settings"),
            subtitle: Text("Additional settings options"),
          ),
          Divider(
            color: const Color.fromARGB(255, 84, 79, 79),
            thickness: 1,
            indent: 3,
            endIndent: 3,
            height: 5,
          ),
        ],
      ),
    );
  }
}
