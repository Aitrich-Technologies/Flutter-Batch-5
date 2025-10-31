import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemingExample45 extends StatefulWidget {
  @override
  _ThemingExample45State createState() => _ThemingExample45State();
}

class _ThemingExample45State extends State<ThemingExample45> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Dynamic Theming Example'),
          ),
          body: Center(
            // Add your circle avatar properties here
            child: Column(
              children: [
                CircleAvatar(
                    radius: 100,
                    backgroundColor:
                        Theme.of(context).brightness == Brightness.dark
                            ? const Color.fromARGB(255, 246, 34, 129)
                            : const Color.fromARGB(255, 3, 100, 179)),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Name",
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]+$'))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Phone number"),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10)
                  ],
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Password"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isDarkMode = !isDarkMode;
                    });
                  },
                  child: Text('Toggle Theme'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
