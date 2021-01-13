import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadize/screens/login/sign_in_screen.dart';
import 'package:roadize/size_config.dart';
import 'package:roadize/constants.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool fadeWidth;
  bool fadeHeight;

  @override
  void initState() {
    super.initState();
    fadeWidth = false;
    fadeHeight = false;
    animation();
  }

  Future<void> animation() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        fadeWidth = true;
      });
    });
    Future.delayed(Duration(milliseconds: 1800), () {
      setState(() {
        fadeHeight = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo.png',
                  scale: 2.5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: fadeWidth ? getProportionateScreenWidth(120.0) : 0.0,
                    height:
                        fadeHeight ? getProportionateScreenHeight(40.0) : 3.0,
                    child: Center(
                      child: Text(
                        'START',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: kSecondLightColor,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(2, 5),
                              blurRadius: 5.0)
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
