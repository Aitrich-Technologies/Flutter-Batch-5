import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main(){
  runApp(MaterialApp(home: Act3(),));
}
class Act3 extends StatefulWidget {
  const Act3({super.key});

  @override
  State<Act3> createState() => _Act3State();
}

class _Act3State extends State<Act3> {
  late Database database;
  List<Map<String,dynamic>>items=[];
  @override
  void initState(){
    super.initState();
    initializeDatabase();
  }
  Future<void>initializeDatabase()async{
    final dbpath = await getDatabasesPath();
    final path= join(dbpath , 'items.db');
    database=await openDatabase( path,version: 1,onCreate: (db,version){
      return db.execute("create table items(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT)");
    });
    fetchitem();
  }
  Future<void> additem(String name)async{
    await database.insert('items', {'name':name});
    fetchitem();
  }
  Future<void>fetchitem()async{
    final item = await database.query('items');
    setState(() {
      items = item;
    });
  }
  Future<void>deleteitem(int id)async{
    await database.delete('items',where: 'id = ?',whereArgs: [id]);
    fetchitem();
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    return Scaffold(appBar: AppBar(title: Text("SQLite"),centerTitle: true,backgroundColor: Colors.pink,),
    body: Column(children: [Row(children: [Expanded(child: TextField(
      controller: namecontroller,
      decoration: InputDecoration(hintText: "entername",),
    )
    ),ElevatedButton(onPressed: (){
      if (namecontroller.text.isNotEmpty) {
        additem(namecontroller.text);
        namecontroller.clear();
        
      }
    }, child:Text("add"))
    ],),
    Expanded(child: ListView.builder(itemCount: items.length,itemBuilder: (context,index){
      final item = items[index];
      return ListTile(title: Text(item['name']),
      trailing: IconButton(onPressed: (){
        deleteitem(item['id']);
      }, icon: Icon(Icons.delete)),);
    }))
    
    ],),
    
    );
  }
}