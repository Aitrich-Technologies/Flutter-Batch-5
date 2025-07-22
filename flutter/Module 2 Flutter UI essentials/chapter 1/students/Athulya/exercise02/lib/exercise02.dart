// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Wrapped Image in a Container
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://img.freepik.com/premium-vector/sign-up-concept-illustration_114360-7965.jpg?semt=ais_hybrid&w=740",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Title and Subtitle
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create your Account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Create an account so you can manage your personal finances",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),

                // Name TextField
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Number TextField
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password TextField
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Enter password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Sign Up Button
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 9, 79, 230),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 150,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Signup with text
                const Center(
                  child: Text("Signup with"),
                ),

                // Social icons
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.facebook, size: 30),
                      SizedBox(width: 30),
                      Icon(Icons.g_mobiledata, size: 30),
                      SizedBox(width: 30),
                      Icon(Icons.apple, size: 30),
                    ],
                  ),
                ),

                // Already have account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}