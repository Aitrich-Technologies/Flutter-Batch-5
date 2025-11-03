import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 80),
        child: Column(
          children: [
            Text(
              "Kitty",
              style: TextStyle(
                fontSize: 50,
                color: Colors.pink,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 100),
              child: Image.asset(
                "image/download (2).jpg",
                height: 350,
                width: 350,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.mail, color: Colors.white, size: 24),
                label: Text(
                  "Login with Email",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 75, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(30),
                  ),
                  elevation: 8,
                  shadowColor: Colors.pinkAccent,
                ),
              ),
            ),
            SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.facebook, color: Colors.white, size: 24),
              label: Text(
                "Login with facebook",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(30),
                ),
                elevation: 8,
                shadowColor: Colors.pinkAccent,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Text(
                    "Didn't have an account ?",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign Up", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
            SizedBox(height: 50),
            Column(
              children: [
                Text(
                  "By continue you agree to our",
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Terms", style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    Text("&", style: TextStyle(fontSize: 18)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(fontSize: 18),
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
