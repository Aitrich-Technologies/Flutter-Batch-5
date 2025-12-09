import 'package:flutter/material.dart';

class Act4 extends StatefulWidget {
  const Act4({super.key});

  @override
  State<Act4> createState() => _Act4State();
}

class _Act4State extends State<Act4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.network_cell),
            title: Text("Mobile Network"),
            subtitle: Text("manage network settings"),
          ),Divider(color: const Color.fromARGB(255, 185, 184, 184),thickness: 3,height: 10,),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("language"),
            subtitle: Text("change app language"),
          ),Divider(color: const Color.fromARGB(255, 185, 184, 184),thickness: 3,height: 10,),
          
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text("theme"),
            subtitle: Text("choose light or dark theme"),
          ),Divider(color: const Color.fromARGB(255, 185, 184, 184),thickness: 3,height: 10,),
          
          ListTile(
            leading: Icon(Icons.volume_up_outlined),
            title: Text("sounds & vibrations"),
            subtitle: Text("adjust sound and vibration settings"),
          ),Divider(color: const Color.fromARGB(255, 185, 184, 184),thickness: 3,height: 10,),
          
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("More settings"),
            subtitle: Text("additional settings options"),
          ),Divider(color: const Color.fromARGB(255, 185, 184, 184),thickness: 3,height: 10,),
          
        ],
      ),
    );
  }
}
