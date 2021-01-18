import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

class PhotoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Text(
          'PHOTO',
          style: TextStyle(
              fontSize: SizeConfig.fontSize * 1.1, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: getProportionateScreenHeight(15.0),
        ),
        Text(
          '대표 사진을 선택하세요',
          style: TextStyle(
            fontSize: SizeConfig.fontSize * 0.8,
          ),
        ),
      ],
    );
  }
}
