import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

class UserStatisticContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        UserStatistics(
          title: '로드',
          statistics: '150',
        ),
        UserStatistics(
          title: '팔로워',
          statistics: '140.7M',
        ),
        UserStatistics(
          title: '팔로잉',
          statistics: '1',
        ),
      ],
    );
  }
}

class UserStatistics extends StatelessWidget {
  UserStatistics({this.title, this.statistics});
  final title;
  final statistics;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Text(title,
            style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.fontSize * 0.7,
                fontFamily: 'nexon_light')),
        Text(statistics,
            style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.fontSize * 1.1,
                fontFamily: 'nexon_light')),
      ],
    );
  }
}
