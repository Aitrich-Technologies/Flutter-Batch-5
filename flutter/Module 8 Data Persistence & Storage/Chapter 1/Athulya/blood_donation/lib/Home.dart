import 'dart:convert';
import 'package:blood_donation/Login.dart';
import 'package:blood_donation/bloodgroup.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> donors = [];

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String? _selectedGroup;

  @override
  void initState() {
    super.initState();
    loadDonors();
  }

  Future<void> loadDonors() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? stored = prefs.getStringList("donors");

    if (stored != null) {
      donors = stored
          .map((e) => jsonDecode(e) as Map<String, dynamic>)
          .toList();
    }

    setState(() {});
  }

  Future<void> saveDonors() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> encoded = donors.map((e) => jsonEncode(e)).toList();
    await prefs.setStringList("donors", encoded);
  }

  Future<void> logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("loggedIn", false);

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
      (Route<dynamic> route) => false,
    );
  }

  void deleteDonor(int index) async {
    donors.removeAt(index);
    saveDonors();
    setState(() {});
  }

  void _updateDonor(int index) {
    if (_nameController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty &&
        _selectedGroup != null) {
      donors[index]["name"] = _nameController.text;
      donors[index]["phone"] = _phoneController.text;
      donors[index]["group"] = _selectedGroup;

      saveDonors();

      setState(() {});
    }
  }

  void _showEditDialog(Map<String, dynamic> donor, int index) {
    _nameController.text = donor["name"];
    _phoneController.text = donor["phone"];
    _selectedGroup = donor["group"];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setStateSB) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: const Text(
                "Edit Donor Details",
                textAlign: TextAlign.center,
              ),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: "Name"),
                    ),
                    const SizedBox(height: 10),

                    TextField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        labelText: "Phone number",
                      ),
                    ),
                    const SizedBox(height: 20),

                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: "Blood Group",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                      ),
                      value: _selectedGroup,
                      items:
                          const <String>[
                            'A+',
                            'A-',
                            'B+',
                            'B-',
                            'AB+',
                            'AB-',
                            'O+',
                            'O-',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                      onChanged: (String? newValue) {
                        setStateSB(() {
                          _selectedGroup = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),

                TextButton(
                  onPressed: () {
                    _updateDonor(index);
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Update',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.add,color: Colors.white,),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const Bloodgroup()),
          );

          loadDonors();
        },
      ),

      appBar: AppBar(
        title: const Text(
          "Blood Donation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 223, 19, 5),
        actions: [
          IconButton(
            onPressed: () => logout(context),
            icon: const Icon(Icons.logout, color: Colors.white),
          ),
        ],
      ),

      body: donors.isEmpty
          ? const Center(child: Text("No Donors Added"))
          : ListView.builder(
              itemCount: donors.length,
              itemBuilder: (context, index) {
                return donorCard(donors[index], index);
              },
            ),
    );
  }

  Widget donorCard(Map<String, dynamic> donor, int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.red,
              child: Text(
                donor["group"],
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    donor["name"],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    donor["phone"],
                    style: const TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),

            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blue),
              onPressed: () {
                _showEditDialog(donor, index);
              },
            ),

            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                deleteDonor(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
