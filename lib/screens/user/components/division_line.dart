import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class DivisionLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ROAD ',
          style: TextStyle(color: kSecondColor),
        ),
        Container(
          width: SizeConfig.screenWidth * 0.7,
          height: 2,
          color: kPrimaryColor,
        ),
        Text(
          ' IZE',
          style: TextStyle(color: kSecondColor),
        ),
      ],
    );
  }
}
