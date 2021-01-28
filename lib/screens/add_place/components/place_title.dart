import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class PlaceTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.only(
          top: kDefaultPadding,
          left: SizeConfig.screenWidth * 0.15,
          right: kDefaultPadding),
      child: TextField(
        style: TextStyle(fontSize: SizeConfig.fontSize),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
            hintText: '장소 이름을 입력하세요',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
