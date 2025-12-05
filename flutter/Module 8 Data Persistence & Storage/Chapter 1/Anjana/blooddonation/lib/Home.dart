// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MaterialApp(home: Home()));
// }

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   TextEditingController namecontrol = TextEditingController();
//   TextEditingController phonecontrol = TextEditingController();
//   String? errorno;

//   String selectedgroup = "A+";

//   final List<String> bloodgroup = [
//     "A+",
//     "A-",
//     "B+",
//     "B-",
//     "O+",
//     "O-",
//     "AB+",
//     "AB-",
//   ];

//   List<Map<String, String>> donor = [];

//   @override
//   void initState() {
//     super.initState();
//     loaditems();
//   }

//   // -------- LOAD DATA ----------
//   Future<void> loaditems() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     String? data = pref.getString("donor");

//     if (data != null) {
//       List decoded = json.decode(data);
//       donor = decoded.map((e) => Map<String, String>.from(e)).toList();
//       setState(() {});
//     }
//   }

//   // -------- SAVE ONE DONOR ----------
//   Future<void> addDonor() async {
//     String name = namecontrol.text.trim();
//     String phone = phonecontrol.text.trim();

//     if (name.isNotEmpty && phone.isNotEmpty) {
//       donor.add({"name": name, "phone": phone, "group": selectedgroup});

//       SharedPreferences pref = await SharedPreferences.getInstance();
//       await pref.setString("donor", json.encode(donor));

//       namecontrol.clear();
//       phonecontrol.clear();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text(
//           "Home",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
//         ),
//         backgroundColor: Color.fromARGB(255, 191, 30, 18),
//       ),

//       // FAB
//       floatingActionButton: SizedBox(
//         height: 70,
//         width: 70,
//         child: FloatingActionButton(
//           elevation: 0,
//           backgroundColor:  Color.fromARGB(255, 191, 30, 18),
//           onPressed: adddoner,
//           child: Icon(Icons.add, color: Colors.white, size: 40),
//         ),
//       ),

//       // -------- LIST VIEW ----------
//       body: ListView.builder(
//         itemCount: donor.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               title: Text(donor[index]["name"] ?? ""),
//               subtitle: Text(donor[index]["phone"] ?? ""),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.red,
//                 child: Text(
//                   donor[index]["group"]!,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15,
//                   ),
//                 ),
//               ),
//               trailing: Padding(
//                 padding: const EdgeInsets.only(top: 10.0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                       onPressed: () {
//                         editdonor(index);
//                       },
//                       icon: Icon(Icons.edit, color:  Color.fromARGB(255, 191, 30, 18)),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         deletedonor(index);
//                       },
//                       icon: Icon(Icons.delete, color:  Color.fromARGB(255, 191, 30, 18)),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Future<void> deletedonor(int index) async {
//     setState(() {
//       donor.removeAt(index);
//     });
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     await pref.setString("donor", json.encode(donor));
//   }

//   void adddoner() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           title: Text(
//             "Add Donor",
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Color.fromARGB(255, 176, 22, 11),
//             ),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: namecontrol,
//                 decoration: InputDecoration(
//                   hintText: "Enter name",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 8),
//               TextField(
//                 controller: phonecontrol,

//                 decoration: InputDecoration(
//                   errorText: errorno,
//                   errorStyle: TextStyle(color:  Color.fromARGB(255, 191, 30, 18)),
//                   hintText: "Enter phone number",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               DropdownButtonFormField(
//                 value: selectedgroup,
//                 items: bloodgroup.map((item) {
//                   return DropdownMenuItem(value: item, child: Text(item));
//                 }).toList(),
//                 decoration: InputDecoration(
//                   labelText: "Select Blood Group",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 onChanged: (value) {
//                   selectedgroup = value.toString();
//                   setState(() {});
//                 },
//               ),
//               SizedBox(height: 10),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor:  Color.fromARGB(255, 191, 30, 18),
//                   minimumSize: Size(70, 50),
//                 ),
//                 onPressed: () {
//                   addDonor();
//                   Navigator.pop(context);
//                   setState(() {});
//                 },
//                 child: Text(
//                   "Save",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void editdonor(int index) {
//     namecontrol.text = donor[index]["name"]!;
//     phonecontrol.text = donor[index]["phone"]!;
//     selectedgroup = donor[index]["group"]!;

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           title: Text(
//             "Edit",
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color:  Color.fromARGB(255, 191, 30, 18),
//             ),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: namecontrol,
//                 decoration: InputDecoration(
//                   hintText: "Enter name",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 8),
//               TextField(
//                 controller: phonecontrol,
//                 decoration: InputDecoration(
//                   hintText: "Enter phone number",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               DropdownButtonFormField(
//                 value: selectedgroup,
//                 items: bloodgroup.map((item) {
//                   return DropdownMenuItem(value: item, child: Text(item));
//                 }).toList(),
//                 decoration: InputDecoration(
//                   labelText: "Select Blood Group",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 onChanged: (value) {
//                   selectedgroup = value.toString();
//                   setState(() {});
//                 },
//               ),
//               SizedBox(height: 10),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor:  Color.fromARGB(255, 191, 30, 18),
//                   minimumSize: Size(70, 50),
//                 ),
//                 onPressed: () {
//                   saveEdit(index);
//                   Navigator.pop(context);
//                 },
//                 child: Text(
//                   "Save",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   Future<void> edit(int index, String newvalue) async {
//     donor[index] = newvalue as Map<String, String>;
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     await pref.setString("donor", json.encode(donor));
//     setState(() {});
//   }

//   Future<void> saveEdit(int index) async {
//     donor[index] = {
//       "name": namecontrol.text.trim(),
//       "phone": phonecontrol.text.trim(),
//       "group": selectedgroup,
//     };

//     SharedPreferences pref = await SharedPreferences.getInstance();
//     await pref.setString("donor", json.encode(donor));

//     setState(() {});
//   }
// }




import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController namecontrol = TextEditingController();
  TextEditingController phonecontrol = TextEditingController();

  String? nameError;
  String? phoneError;

  final RegExp nameReg = RegExp(r'^[a-zA-Z ]+$');
  final RegExp phoneReg = RegExp(r'^[0-9]{10}$');

  String selectedgroup = "A+";

  final List<String> bloodgroup = [
    "A+",
    "A-",
    "B+",
    "B-",
    "O+",
    "O-",
    "AB+",
    "AB-",
  ];

  List<Map<String, String>> donor = [];

  @override
  void initState() {
    super.initState();
    loaditems();
  }

  // -------- LOAD DATA ----------
  Future<void> loaditems() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? data = pref.getString("donor");

    if (data != null) {
      List decoded = json.decode(data);
      donor = decoded.map((e) => Map<String, String>.from(e)).toList();
      setState(() {});
    }
  }

  // -------- SAVE ONE DONOR ----------
  Future<void> addDonor() async {
    String name = namecontrol.text.trim();
    String phone = phonecontrol.text.trim();

    if (name.isNotEmpty && phone.isNotEmpty) {
      donor.add({"name": name, "phone": phone, "group": selectedgroup});

      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.setString("donor", json.encode(donor));

      namecontrol.clear();
      phonecontrol.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color.fromARGB(255, 191, 30, 18),
      ),

      // FAB
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 191, 30, 18),
          onPressed: adddoner,
          child: Icon(Icons.add, color: Colors.white, size: 40),
        ),
      ),

      // -------- LIST VIEW ----------
      body: ListView.builder(
        itemCount: donor.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(donor[index]["name"] ?? ""),
              subtitle: Text(donor[index]["phone"] ?? ""),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  donor[index]["group"]!,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      editdonor(index);
                    },
                    icon: Icon(Icons.edit,
                        color: Color.fromARGB(255, 191, 30, 18)),
                  ),
                  IconButton(
                    onPressed: () {
                      deletedonor(index);
                    },
                    icon: Icon(Icons.delete,
                        color: Color.fromARGB(255, 191, 30, 18)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> deletedonor(int index) async {
    donor.removeAt(index);
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("donor", json.encode(donor));
    setState(() {});
  }

  // ---------------------------------------------------------------------------
  // ADD DONOR WITH VALIDATION
  // ---------------------------------------------------------------------------
  void adddoner() {
    namecontrol.clear();
    phonecontrol.clear();
    nameError = null;
    phoneError = null;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: Text(
              "Add Donor",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 176, 22, 11)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // NAME FIELD
                TextField(
                  controller: namecontrol,
                  decoration: InputDecoration(
                    hintText: "Enter name",
                    errorText: nameError,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() => nameError = "Name cannot be empty");
                    } else if (!nameReg.hasMatch(value)) {
                      setState(() => nameError = "Only letters allowed");
                    } else {
                      setState(() => nameError = null);
                    }
                  },
                ),

                SizedBox(height: 8),

                // PHONE FIELD
                TextField(
                  controller: phonecontrol,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    errorText: phoneError,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() => phoneError = "Phone cannot be empty");
                    } else if (!phoneReg.hasMatch(value)) {
                      setState(
                          () => phoneError = "Enter valid 10 digit number");
                    } else {
                      setState(() => phoneError = null);
                    }
                  },
                ),

                SizedBox(height: 10),

                // DROPDOWN
                DropdownButtonFormField(
                  value: selectedgroup,
                  items: bloodgroup
                      .map((item) =>
                          DropdownMenuItem(value: item, child: Text(item)))
                      .toList(),
                  decoration: InputDecoration(
                    labelText: "Select Blood Group",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (value) {
                    selectedgroup = value.toString();
                    setState(() {});
                  },
                ),

                SizedBox(height: 10),

                // SAVE BUTTON
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 191, 30, 18)),
                  onPressed: () {
                    if (nameError != null ||
                        phoneError != null ||
                        namecontrol.text.isEmpty ||
                        phonecontrol.text.isEmpty) return;

                    addDonor();
                    Navigator.pop(context);
                   this. setState(() {});
                  },
                  child: Text("Save",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                )
              ],
            ),
          );
        });
      },
    );
  }

  // ---------------------------------------------------------------------------
  // EDIT DONOR WITH SAME VALIDATION
  // ---------------------------------------------------------------------------
  void editdonor(int index) {
    namecontrol.text = donor[index]["name"]!;
    phonecontrol.text = donor[index]["phone"]!;
    selectedgroup = donor[index]["group"]!;

    nameError = null;
    phoneError = null;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: Text(
              "Edit Donor",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 191, 30, 18)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: namecontrol,
                  decoration: InputDecoration(
                    hintText: "Enter name",
                    errorText: nameError,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() => nameError = "Name cannot be empty");
                    } else if (!nameReg.hasMatch(value)) {
                      setState(() => nameError = "Only letters allowed");
                    } else {
                      setState(() => nameError = null);
                    }
                  },
                ),

                SizedBox(height: 8),

                TextField(
                  controller: phonecontrol,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    errorText: phoneError,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() => phoneError = "Phone cannot be empty");
                    } else if (!phoneReg.hasMatch(value)) {
                      setState(
                          () => phoneError = "Enter valid 10 digit number");
                    } else {
                      setState(() => phoneError = null);
                    }
                  },
                ),

                SizedBox(height: 10),

                DropdownButtonFormField(
                  value: selectedgroup,
                  items: bloodgroup
                      .map((item) =>
                          DropdownMenuItem(value: item, child: Text(item)))
                      .toList(),
                  decoration: InputDecoration(
                    labelText: "Select Blood Group",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (value) {
                    selectedgroup = value.toString();
                    setState(() {});
                  },
                ),

                SizedBox(height: 10),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 191, 30, 18)),
                  onPressed: () {
                    if (nameError != null ||
                        phoneError != null ||
                        namecontrol.text.isEmpty ||
                        phonecontrol.text.isEmpty) return;

                    donor[index] = {
                      "name": namecontrol.text.trim(),
                      "phone": phonecontrol.text.trim(),
                      "group": selectedgroup,
                    };

                    SharedPreferences.getInstance().then((pref) {
                      pref.setString("donor", json.encode(donor));
                    });

                    Navigator.pop(context);
                   this. setState(() {});
                  },
                  child: Text("Save",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                )
              ],
            ),
          );
        });
      },
    );
  }
}
