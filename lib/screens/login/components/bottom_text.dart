import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  BottomText({this.firstText, this.secondText});

  final firstText;
  final secondText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(text: firstText, style: TextStyle(color: Colors.black)),
        TextSpan(text: secondText, style: TextStyle(color: Colors.blue))
      ])),
    );
  }
}
