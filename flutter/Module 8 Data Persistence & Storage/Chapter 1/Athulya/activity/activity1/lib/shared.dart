import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class activity1 extends StatefulWidget {
  const activity1({super.key});

  @override
  State<activity1> createState() => _activity1State();
}

class _activity1State extends State<activity1> {
  final TextEditingController controller = TextEditingController();
  List<String> items = [];

  @override
  void initState() {
    super.initState();
    loadItems();
  }

  Future<void> loadItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? itemsJson = prefs.getString("items");
    if (itemsJson != null) {
      setState(() {
        items = List<String>.from(json.decode(itemsJson));
      });
    }
  }

  Future<void> addItem(String item) async {
    if (item.isNotEmpty) {
      setState(() {
        items.add(item);
      });
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("items", json.encode(items));
      controller.clear();
    }
  }

  void _saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('tasks', items);
  }

  void _Deletedata(int index) async {
    setState(() {
      items.removeAt(index);
    });
    _saveTasks();
  }
  void _edit(int index)async{
    TextEditingController editingController=TextEditingController(text: items[index]);
    await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: TextField(
          controller: editingController,
          decoration: InputDecoration(
            border: OutlineInputBorder()
          ),
        ),
        actions: [
          TextButton(onPressed: ()=>Navigator.pop(context), 
          child: Text("Cancel")),

          TextButton(onPressed: ()async{
            setState(() {
              items[index]=editingController.text;
            });
            SharedPreferences prefs=await SharedPreferences.getInstance();
            prefs.setString("items", json.encode(items));
            Navigator.pop(context);
          }, child: Text("Save"))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          "Shared Preferences",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  addItem(controller.text);
                },
                child: Text(
                  "Add",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
               Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(items[index]),
                  ),
                  ),
                  IconButton(onPressed: (){
                  _edit(index);
                  }, icon: Icon(Icons.edit)),

                  IconButton(onPressed: (){
                    _Deletedata(index);
                  }, icon: Icon(Icons.delete))
                ],
              ),
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
