import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.settings)],
        backgroundColor: Colors.amber,
        title: const Text('Empetz'),
        centerTitle: true,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showAddPostDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Add Post"),
          content: const Text("Do you want to add a post?"),
          actions: [
            TextButton(
              child: const Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () => _showAddPostDialog(context),
        child: const Icon(Icons.add),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildImageContainer('assets/cat.jpg'),
          _buildImageContainer('assets/cat2.jpg'),
          _buildImageContainer('assets/cat1.jpg'),
          _buildImageContainer('assets/cat.jpg'),
          _buildImageContainer('assets/cat.jpg'),
          _buildImageContainer('assets/cat2.jpg'),
          _buildImageContainer('assets/cat2.jpg'),
          _buildImageContainer('assets/cat1.jpg'),
        ],
      ),
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Container(
      color: Colors.green,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView( // for better handling in small screens
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/cat1.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Aitrich',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone Number'),
                  subtitle: Text('+1234567890'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('example@example.com'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Username'),
                  subtitle: Text('username123'),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {},
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
