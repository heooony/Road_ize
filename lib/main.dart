import 'package:chickpea/screens/home/home_screen.dart';
import 'package:chickpea/screens/plan/plan_screen.dart';
import 'package:flutter/material.dart';
import 'package:chickpea/screens/login/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
