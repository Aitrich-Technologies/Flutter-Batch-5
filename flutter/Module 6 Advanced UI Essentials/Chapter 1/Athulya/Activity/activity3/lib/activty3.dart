// import 'package:flutter/material.dart';

// class Activty3 extends StatefulWidget {
//   const Activty3({super.key});

//   @override
//   State<Activty3> createState() => _Activty3State();
// }

// class _Activty3State extends State<Activty3> {
//   String? selectedValue;
//   final List<String> items = ["100", "200", "300"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 67, 57, 57),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 61, 146, 215),
//         title: Text("Simple Interest Calculator"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Image.asset("image/act3.jpg", height: 300, width: 300),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   labelText: "Principal",
//                   labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   labelText: "Rate of Interest",
//                   labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.only(right: 100),
//               child: SizedBox(
//                 height: 50,
//                 width: 300,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 70),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         flex: 2,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 10),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               labelText: "Terms",
//                               labelStyle: TextStyle(color: Colors.white),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 15),
//                       Expanded(
//                         flex: 2,
//                         child: Container(
//                           height: 60,
//                           padding: const EdgeInsets.symmetric(horizontal: 10),
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.white),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: DropdownButton<String>(
//                             hint: Text(
//                               "Register",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             value: selectedValue,
//                             icon: Icon(
//                               Icons.arrow_drop_down,
//                               color: Colors.white,
//                             ),
//                             dropdownColor: Colors.grey,
//                             underline: SizedBox(),
//                             style: TextStyle(color: Colors.white),
//                             isExpanded: true,
//                             onChanged: (String? newValue) {
//                               setState(() {
//                                 selectedValue = newValue!;
//                               });
//                             },
//                             items: items.map<DropdownMenuItem<String>>((
//                               String value,
//                             ) {
//                               return DropdownMenuItem<String>(
//                                 value: value,
//                                 child: Text(value),
//                               );
//                             }).toList(),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 40),

//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 60),
//                     ),
//                     child: Text("Calculate"),
//                   ),
//                 ),
//                 SizedBox(width: 5),

//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 70),
//                   ),
//                   child: Text("Reset"),
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

class Activty3 extends StatefulWidget {
  const Activty3({super.key});

  @override
  State<Activty3> createState() => _Activty3State();
}

class _Activty3State extends State<Activty3> {
  String? selectedValue;
  final List<String> items = ["100", "200", "300"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 57, 57),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 146, 215),
        title: const Text("Simple Interest Calculator"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset("image/act3.jpg", height: 250, width: 250),
              const SizedBox(height: 20),

              // Principal TextField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Principal",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              // Rate of Interest TextField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Rate of Interest",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              // Row with Terms TextField + Rupees Dropdown
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    // Terms TextField
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Terms",
                          labelStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),

                    // Rupees Dropdown
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 58,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButton<String>(
                          hint: const Text(
                            "Rupees",
                            style: TextStyle(color: Colors.white),
                          ),
                          value: selectedValue,
                          icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                          dropdownColor: Colors.grey[800],
                          underline: const SizedBox(),
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: items.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // Buttons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text("Calculate", style: TextStyle(fontSize: 16)),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text("Reset", style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
