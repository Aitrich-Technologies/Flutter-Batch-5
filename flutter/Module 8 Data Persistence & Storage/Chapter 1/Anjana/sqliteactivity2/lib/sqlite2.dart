import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(MaterialApp(home: SQL()));
}

class SQL extends StatefulWidget {
  const SQL({super.key});

  @override
  State<SQL> createState() => _SQLState();
}

class _SQLState extends State<SQL> {
  late Database database;
  List<Map<String,dynamic>> items = [];
  @override
  void initState() {
    super.initState();
    initialisation();
  }

  Future<void> initialisation() async {
    database = await openDatabase(
      join(await getDatabasesPath(), 'items.db'),
      onCreate: (db, version) {
        return db.execute(
          " CREATE TABLE items (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT,sub TEXT)",
        );
      },
      version: 2,
    );
    fetchitem();
  }

  Future<void> fetchitem() async {
    final data = await database.query("items");
    setState(() {
      items = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keep notes"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 241, 84, 84),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: additem,
        child: Icon(Icons.add),
      ),

      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]["name"]?? ""),
            subtitle: Text(items[index]['sub']?? ""),
            trailing: Row(mainAxisSize: MainAxisSize.min,children: [
              IconButton(onPressed: (){
                edititem(context,items[index]['id'],items[index]['name'],items[index]['sub']);
              }, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){
                deleteitem(items[index]['id']);
              }, icon: Icon(Icons.delete))
            ],),
          );
        },
      ),
    );
  }

  Future<void> additem() async {
    await database.insert("items", {
      'name': "new item",
      "sub": "sample description",
    }, conflictAlgorithm: ConflictAlgorithm.replace);
    fetchitem();
  }

  Future< void> deleteitem(int id) async{
  
    await database.delete('items',where: 'id = ?',whereArgs: [id]);
    fetchitem();
  }
  
  void edititem(BuildContext context,int id, String? currentname,String currentsub)async {
    TextEditingController editingController=TextEditingController(text: currentname);
    TextEditingController subcontroller = TextEditingController(text: currentsub);

  
    await  showDialog( context: context,
    builder: (dialogContex){
      return AlertDialog(
        title: Text("edit item"),
        content: Column(
          children: [
            TextField(
              controller: editingController,
              decoration: InputDecoration(hintText: "new name"),
            ),
            TextField(controller: subcontroller,
            decoration: InputDecoration(labelText: ""),)
          ],
        ),
        actions: [
          TextButton(onPressed: ()=>Navigator.pop(context), child: Text("cancel"),
          ),TextButton(onPressed: ()async{
            if (editingController.text.isNotEmpty){
              await database.update('items', {'name':editingController.text,'sub':subcontroller.text},
              where: 'id = ?',whereArgs: [id]);
              fetchitem();
            }
            Navigator.pop(context);
          }, child: Text("save"))
        ],
      );
    });
  }
}
