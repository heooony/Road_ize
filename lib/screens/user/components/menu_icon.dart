import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class MenuIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Image.asset(
            'images/icons/menu.png',
            width: SizeConfig.screenWidth * 0.06,
            color: Colors.black.withOpacity(0.5),
          ),
          Spacer(),
          Image.asset(
            'images/icons/tool.png',
            width: SizeConfig.screenWidth * 0.06,
            color: Colors.black.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
