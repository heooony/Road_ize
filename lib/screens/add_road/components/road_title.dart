import 'dart:async';

import 'package:flutter/material.dart';
import 'package:roadize/screens/add_road/components/preview.dart';
import 'package:roadize/size_config.dart';
import '../../../constants.dart';

class RoadTitle extends StatelessWidget {
  RoadTitle({this.callback});
  final Function callback;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Text(
          'TITLE',
          style: TextStyle(
              fontSize: SizeConfig.fontSize * 1.1, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.1),
          child: TextField(
            textAlign: TextAlign.center,
            cursorColor: kPrimaryColor,
            style: TextStyle(fontSize: SizeConfig.fontSize * 0.8),
            decoration: InputDecoration(
              hintText: '테마의 제목을 입력하세요',
              border: OutlineInputBorder(borderSide: BorderSide.none),
              contentPadding: EdgeInsets.all(0.0),
            ),
            onChanged: (value) {
              callback(value);
            },
          ),
        )
      ],
    );
  }
}
