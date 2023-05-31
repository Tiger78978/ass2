import 'package:flutter/material.dart';
import 'package:flutter4/views/screens/responsive_screen/large_screen.dart';
import 'package:flutter4/views/screens/responsive_screen/small_screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ResponsiveApp()));
}

class ResponsiveApp extends StatelessWidget {
  ResponsiveApp();

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 450
        ? LargeScreen()
        : SmallScreen();
  }
}
