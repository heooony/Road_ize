import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
            height: size.height * 0.75,
            color: Colors.white,
          ),
        ));
  }
}
