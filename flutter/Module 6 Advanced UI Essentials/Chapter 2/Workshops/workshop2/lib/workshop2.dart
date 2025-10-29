import 'package:flutter/material.dart';

class ThemedApp16 extends StatefulWidget {
  @override
  _ThemedApp16State createState() => _ThemedApp16State();
}

class _ThemedApp16State extends State<ThemedApp16> {
  bool _isDarkMode = false;
  double _boxSize = 100.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Themed App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: _boxSize,
                height: _boxSize,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Resizable Box',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                     // add the calculation here 
                    });
                  },
                  child: Text('Enlarge Box'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // add the calculation here
                    });
                  },
                  child: Text('Shrink Box'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Switch(
              value: _isDarkMode,
              onChanged: (value) {
                setState(() {
                  _isDarkMode = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            AnimatedOpacity(
              opacity: _isDarkMode ? 1.0 : 0.5,
              duration: Duration(seconds: 1),
              child: Text(
                'Opacity Changes with Theme',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}