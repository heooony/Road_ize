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
      child: Row(
        children: [
          Text(
            '장소 이름을 입력하세요',
            style: TextStyle(fontSize: SizeConfig.fontSize * 1.2),
          ),
          Spacer(),
          Icon(
            Icons.sort,
            color: Colors.black.withOpacity(0.6),
          ),
        ],
      ),
    );
  }
}
