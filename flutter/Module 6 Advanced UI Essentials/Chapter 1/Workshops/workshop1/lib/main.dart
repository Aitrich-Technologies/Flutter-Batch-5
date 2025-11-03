import 'package:flutter/material.dart';
import 'package:workshop2/workshop2.dart';

void main() {
  bool isDarkThemeEnabled=false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),darkTheme: ThemeData.dark(),
    themeMode: isDarkThemeEnabled ? ThemeMode.light:ThemeMode.dark,
    home: Favorites2()
  )
  );
}
