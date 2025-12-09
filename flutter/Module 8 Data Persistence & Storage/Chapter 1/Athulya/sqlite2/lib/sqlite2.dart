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
  List<Map<String, dynamic>> items = [];
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

  Future<void> updateitem(int id, String newName, String newsub) async {
    await database.update(
      "items",
      {"name": newName, "sub": newsub},
      where: "id = ?",
      whereArgs: [id],
    );
    fetchitem();
  }

  void showEditDialog(
    BuildContext context,
    int id,
    String currentName,
    String currentSub,
  ) async {
    TextEditingController editController = TextEditingController(
      text: currentName,
    );

    TextEditingController subController = TextEditingController(
      text: currentSub,
    );

    await showDialog(
      context: context,
      builder: (dialougContext) {
        return AlertDialog(
          title: Text("Edit Item"),
          content: Column(
            children: [
              TextField(
                controller: editController,
                decoration: InputDecoration(labelText: "Update name"),
              ),
              TextField(
                controller: subController,
                decoration: InputDecoration(labelText: "Update subtitle"),
              ),
            ],
          ),

          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialougContext),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (editController.text.isNotEmpty) {
                  updateitem(id, editController.text, subController.text);
                  Navigator.pop(dialougContext);
                }
              },
              child: const Text("Update"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keep notes"),
        centerTitle: true,
        backgroundColor: Colors.white,
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
            title: Text(items[index]["name"] ?? ""),
            subtitle: Text(items[index]['sub'] ?? ""),

            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    showEditDialog(
                      context,
                      items[index]['id'],
                      items[index]['name'],
                      items[index]["sub"],
                    );
                  },
                  icon: Icon(Icons.edit, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () {
                    deleteitem(items[index]["id"]);
                  },
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
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

  Future<void> deleteitem(int id) async {
    await database.delete("items", where: "id = ?", whereArgs: [id]);
    fetchitem();
  }
}
