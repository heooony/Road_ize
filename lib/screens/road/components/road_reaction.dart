import 'package:flutter/material.dart';
import 'package:roadize/screens/road/components/road_information.dart';
import 'package:roadize/screens/road/components/road_post.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class RoadReaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      child: Container(
        margin: EdgeInsets.only(left: kDefaultPadding),
        child: Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            Text(
              '102   ',
              style: TextStyle(color: Colors.white),
            ),
            Container(
              width: getProportionateScreenWidth(15.0),
              height: getProportionateScreenHeight(15.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/icons/empty_heart.png'),
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn))),
            ),
            Text(
              ' 102',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
