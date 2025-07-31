// import 'dart:async';

// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       appBar: AppBar(
//         backgroundColor: Colors.green[100],
//         centerTitle: true,
//         title: const Text('Home Screen'),
//       ),
//       body: const Center(
//         child: Text(
//           'Welcome to Home Screen!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 9), () { // Navigate after 3 seconds
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => HomeScreen()), // Replace with your main screen
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 129, 175, 213), // Customize your splash screen background
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Image.asset('Image/Flutter.webp', width: 50, height: 50), // Your app logo
            
          
//             SizedBox(height: 10),
//             Text(
//               'splash screen',
//               style: TextStyle(color: Colors.white, fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }}


import 'dart:async';
import 'package:flutter/material.dart';




// Splash Screen
class SplashScreen1 extends StatefulWidget {
  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 200, 7),
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: const Center(
        child: Text(
          'Welcome to Home Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

