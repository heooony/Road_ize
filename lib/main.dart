import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/add_road/custom_gallery.dart';
import 'package:roadize/screens/first/first_screen.dart';
import 'package:roadize/screens/place/place_screen.dart';
import 'package:roadize/screens/user/user_screen.dart';
import 'package:roadize/size_config.dart';
import 'screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'nexon_light',
          textTheme: TextTheme(
              bodyText1: TextStyle(color: kTextColor),
              bodyText2: TextStyle(color: kTextColor),
              headline1:
                  TextStyle(fontSize: 45.0, fontWeight: FontWeight.normal),
              headline2: TextStyle(color: kTextColor, fontSize: 20.0))),
      home: SafeArea(child: UserScreen()),
    );
  }
}
