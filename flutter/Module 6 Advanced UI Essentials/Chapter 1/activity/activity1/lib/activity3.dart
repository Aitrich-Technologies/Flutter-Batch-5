// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: Act3()));
// }

// class Act3 extends StatefulWidget {
//   const Act3({super.key});

//   @override
//   State<Act3> createState() => _Act3State();
// }

// class _Act3State extends State<Act3> {
//   String? selectedValue;
//   List<String> items = ["1000", "500", "2000"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 33, 51, 130),
//         title: Text(
//           "simple interest Calculator",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       backgroundColor: const Color.fromARGB(255, 43, 42, 42),
//       body: Center(
//         child: Column(
//           children: [
//             Image.asset(
//               "image/act3.jpg",
//               height: 300,
//               width: 401,
//               fit: BoxFit.cover,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 label: Text(
//                   "Principal",
//                   style: TextStyle(fontSize: 20, color: Colors.white),
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               decoration: InputDecoration(
//                 label: Text(
//                   "Rate of Interest",
//                   style: TextStyle(fontSize: 20, color: Colors.white),
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 SizedBox(
//                   height: 70,
//                   width: 160,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       label: Text(
//                         "Terms",
//                         style: TextStyle(fontSize: 20, color: Colors.white),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8),
//                   child: Expanded(
//                     flex: 2,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.white),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: DropdownButton<String>(
//                         hint: Text("Register"),
//                         value: selectedValue,
//                         icon: Icon(Icons.arrow_drop_down, color: Colors.white),
//                         dropdownColor: Colors.white,
//                         isExpanded: true,
//                         items: items.map<DropdownMenuItem<String>>((
//                           String value,
//                         ) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           );
//                         }).toList(),

//                         onChanged: (String? newValue) {
//                           setState(() {
//                             selectedValue = newValue!;
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Act3()));
}

class Act3 extends StatefulWidget {
  const Act3({super.key});

  @override
  State<Act3> createState() => _Act3State();
}

class _Act3State extends State<Act3> {
  String? selectedValue;
  List<String> items = ["1000", "2000", "100"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 51, 130),
        title: const Text(
          "Simple Interest Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 43, 42, 42),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              "image/act3.jpg",
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),

            // Principal
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Principal",
                labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),

            // Rate of Interest
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Rate of Interest",
                labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),

            // Terms + Dropdown Row
            Row(
              children: [
                // Terms TextField
                Expanded(
                  flex: 2,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Terms",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 10),

                // Dropdown
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButton<String>(
                      value: selectedValue,
                      hint: const Text(
                        "Rupee",
                        style: TextStyle(color: Colors.white),
                      ),
                      dropdownColor: Colors.black,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      isExpanded: true,
                      underline: const SizedBox(),
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                      items: items
                          .map(
                            (value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            ),
                          )
                          .toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),SizedBox(height: 50,),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(240, 50),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("reset", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 16, 16, 16),
                    minimumSize: Size(240, 50),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
