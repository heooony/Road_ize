import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class RoadDetails extends StatefulWidget {
  static int number = 0;

  @override
  _RoadDetailsState createState() => _RoadDetailsState();
}

class _RoadDetailsState extends State<RoadDetails> {
  List<String> location = [
    '서울특별시 중구 세종대로 110 서울특별시청asd asdada',
  ];

  List<String> introduce = ['서기전 18년 백제 시조 온조왕이 도읍지왕29)에 북한산'];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: kSecondColor,
            ),
            Container(
              width: SizeConfig.screenWidth * 0.6,
              child: Text(location[0],
                  style: TextStyle(
                      fontSize: SizeConfig.fontSize * 0.65,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: EdgeInsets.only(right: kDefaultPadding),
          child: Text(introduce[0]),
        ),
      ],
    );
  }
}
