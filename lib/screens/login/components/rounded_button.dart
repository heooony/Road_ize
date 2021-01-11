import 'package:flutter/material.dart';
import 'package:roadize/screens/login/sign_up_screen.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.text, this.onTap});
  final text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.screenWidth * 0.5,
        height: getProportionateScreenHeight(50.0),
        decoration: BoxDecoration(
            color: kSecondLightColor,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: kSecondLightColor.withOpacity(0.23),
                  offset: Offset(2, 10),
                  blurRadius: 10.0)
            ]),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 17.0),
          ),
        ),
      ),
    );
  }
}
