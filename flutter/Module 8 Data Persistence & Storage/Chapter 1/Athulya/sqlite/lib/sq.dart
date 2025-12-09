import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart'; 
import 'package:path/path.dart';


class Sq extends StatefulWidget {
  const Sq({super.key});

  @override
  State<Sq> createState() => _SqState();
}

class _SqState extends State<Sq> {
  late Database _database;
  List<Map<String, dynamic>> _items = [];

  @override
  void initState() {
    super.initState();
    _initializeDatabase();
  }

  Future<void> _initializeDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, "items.db");

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE items(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)");
      },
    );

    _fetchItems();
  }

  Future<void> _addItem(String name) async {
    await _database.insert("items", {
      "name": name,
    });
    _fetchItems();
  }

  Future<void> _fetchItems() async {
    final items = await _database.query("items");
    setState(() {
      _items = items;
    });
  }

  Future<void> _deleteItem(int id) async {
    await _database.delete("items", where: "id=?", whereArgs: [id]);
    _fetchItems();
  }

  // ✅ UPDATE FUNCTION
  Future<void> _updateItem(int id, String newName) async {
    await _database.update(
      "items",
      {"name": newName},
      where: "id = ?",
      whereArgs: [id],
    );
    _fetchItems();
  }

  // ✅ EDIT DIALOG FIXED
  void _showEditDialog(BuildContext context,int id, String currentName)async {
    TextEditingController editController =
        TextEditingController(text: currentName);

  await  showDialog(
      context:  context,
      builder: (dialougContext) {  // <-- fixed context name
        return AlertDialog(
          title: Text("Edit Item"),
          content: TextField(
            controller: editController,
            decoration: InputDecoration(labelText: "Update name"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialougContext),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (editController.text.isNotEmpty) {
                  _updateItem(id, editController.text);
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
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: const Text("SQLite"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(hintText: "Enter name"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (controller.text.isNotEmpty) {
                      _addItem(controller.text);
                      controller.clear();
                    }
                  },
                  child: Text("Add"),
                )
              ],
            ),
          ),

          // LIST OF ITEMS
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final item = _items[index];

                return ListTile(
                  title: Text(item["name"]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // EDIT BUTTON
                      IconButton(
                        onPressed: () {
                          _showEditDialog(context,item["id"], item["name"]);
                        },
                        icon: Icon(Icons.edit, color: Colors.blue),
                      ),

                      // DELETE BUTTON
                      IconButton(
                        onPressed: () {
                          _deleteItem(item["id"]);
                        },
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
