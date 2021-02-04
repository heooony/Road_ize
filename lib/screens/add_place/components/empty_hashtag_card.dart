import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/add_place/add_place_screen.dart';
import 'package:roadize/size_config.dart';

class EmptyHashTagCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      margin: EdgeInsets.only(right: 5.0),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(13.0),
        vertical: getProportionateScreenHeight(3.0),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              offset: Offset(3, 3),
              color: Colors.black.withOpacity(0.12),
              blurRadius: 3.0),
          BoxShadow(
              offset: Offset(-10, -10),
              color: Colors.white.withOpacity(0.2),
              blurRadius: 10.0)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '내용',
            style: TextStyle(
              fontSize: SizeConfig.fontSize * 0.7,
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
