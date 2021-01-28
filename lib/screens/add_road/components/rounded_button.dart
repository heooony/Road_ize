import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.text, this.onTap});
  final Function onTap;
  final text;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return InkWell(
        onTap: onTap,
        child: Container(
          width: getProportionateScreenWidth(90.0),
          height: getProportionateScreenHeight(26.0),
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(20.0)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white, fontSize: SizeConfig.fontSize * 0.9),
            ),
          ),
        ));
  }
}
