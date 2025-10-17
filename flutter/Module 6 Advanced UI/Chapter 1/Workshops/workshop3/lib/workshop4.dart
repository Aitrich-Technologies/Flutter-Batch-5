import 'package:flutter/material.dart';

class Buyers19 extends StatefulWidget {
  const Buyers19({Key? key}) : super(key: key);

  @override
  State<Buyers19> createState() => _Buyers19State();
}

class _Buyers19State extends State<Buyers19> {
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

  String? selectedValue3;

  final List<String> items3 = ['breed1', 'breed2', 'breed3', 'breed4'];
  bool isChecked2 = false;
  bool isCheckedvac = false;
  bool isCheckedcer = false;

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
          
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)
          ),
        ],
      ),
     // Create enddrawer here
      body: ListView(
        children: [
          buildListItem("Bella", "₹ 5000"),
          buildListItem("Lucy", "₹ 1500" ),    
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