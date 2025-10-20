import 'package:flutter/material.dart';

class Buyers19 extends StatefulWidget {
  const Buyers19({Key? key}) : super(key: key);

  @override
  State<Buyers19> createState() => _Buyers19State();
}

class _Buyers19State extends State<Buyers19> {
  String? selectedValue3;
  String? selectedBreed;
  bool isAdoptChecked = false;
  bool isVaccinatedChecked = false;
  bool isCertifiedChecked = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Set<String> likedItems = {};

  void toggleLike(String item) {
    setState(() {
      if (likedItems.contains(item)) {
        likedItems.remove(item);
      } else {
        likedItems.add(item);
      }
    });
  }

  final List<String> items3 = ['Breed 1', 'Breed 2', 'Breed 3', 'Breed 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Cat'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: const Icon(Icons.filter_alt_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 70.0, bottom: 20),
                  child: Text(
                    "Filter & Sort",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: "Breed",
                      border: OutlineInputBorder(),
                    ),
                    value: selectedValue3,
                    items: items3
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedValue3 = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Age Limit"),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    )),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
                      child: Text("To"),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Date Published"),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Three days ago...",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Text("Looking to Adopt"),
                    ),
                    Spacer(),
                    Checkbox(
                        value: isAdoptChecked,
                        onChanged: (Value) => setState(() {
                              isAdoptChecked = Value!;
                            }))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Price Range"),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    )),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
                      child: Text("-"),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Location", border: OutlineInputBorder()),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 190),
                      child: Text("Vaccinated"),
                    ),
                    Spacer(),
                    Checkbox(
                        value: isVaccinatedChecked,
                        onChanged: (value) => setState(() {
                              isVaccinatedChecked = value!;
                            })),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Text("Certified"),
                    ),
                    Spacer(),
                    Checkbox(
                        value: isCertifiedChecked,
                        onChanged: (value) => setState(() {
                              isCertifiedChecked = value!;
                            }))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 50),
                      backgroundColor: Colors.orange),
                  child: Text(
                    "Apply",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          buildListItem("Bella", "₹ 5000"),
          buildListItem("Lucy", "₹ 1500"),
          buildListItem("Loki", "₹ 2000"),
          buildListItem("Milo", "₹ 10000"),
          buildListItem("Leo", "₹ 6500"),
          buildListItem("Oggy", "₹ 3500"),
        ],
      ),
    );
  }

  Widget buildListItem(String name, String price) {
    bool isLiked = likedItems.contains(name);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color.fromARGB(255, 232, 229, 229),
        child: ListTile(
          title: Text(name),
          subtitle: Text(price),
          trailing: IconButton(
            onPressed: () {
              toggleLike(name);
            },
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.red : null,
            ),
          ),
          leading: const CircleAvatar(
            backgroundColor: Colors.black,
            radius: 30,
          ),
        ),
      ),
    );
  }
}
