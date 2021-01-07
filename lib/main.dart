import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'nexon_light',
      ),
      home: SafeArea(child: HomeScreen()),
    );
  }
}
