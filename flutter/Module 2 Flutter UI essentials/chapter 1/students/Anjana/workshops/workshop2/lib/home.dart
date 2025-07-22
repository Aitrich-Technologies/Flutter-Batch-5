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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.settings)],
        backgroundColor: Colors.amber,
        title: const Text('Empetz'),
        centerTitle: true,
      ),
      body: Center(
        child: _selectedIndex == 0 ? const HomeScreen() : const ProfileScreen(),
      ),
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
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        mainAxisSpacing: 20.0, // Spacing between rows
        crossAxisSpacing: 20.0, // Spacing between columns
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            color: Colors.green,
            child: Image.asset(
              'assets/cat.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image.asset(
              'assets/cat2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image.asset(
              'assets/cat1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image.asset(
              'assets/cat.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image.asset(
              'assets/cat.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image.asset(
              'assets/cat2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image.asset(
              'assets/cat2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image.asset(
              'assets/cat1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage('assets/cat1.jpg'), // Replace with your image
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
    );
  }
}
