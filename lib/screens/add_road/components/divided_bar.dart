import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class DividedBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Expanded(
        flex: 1,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            children: [
              Text(
                '앨범',
                style: TextStyle(fontSize: SizeConfig.fontSize * 1.2),
              ),
              Spacer(),
              Text(
                '버튼',
                style: TextStyle(fontSize: SizeConfig.fontSize * 1.2),
              )
            ],
          ),
        ));
  }
}
