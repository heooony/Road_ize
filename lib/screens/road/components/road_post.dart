import 'package:flutter/material.dart';
import 'package:roadize/screens/road/components/road_information.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RoadPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          width: SizeConfig.screenWidth * 0.2,
          height: SizeConfig.screenHeight * 0.15,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.23))),
          child: Center(
            child: Text(
              '장소 이름입니다.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: SizeConfig.fontSize),
            ),
          ),
        ),
        RoadInformation()
      ],
    );
  }
}
