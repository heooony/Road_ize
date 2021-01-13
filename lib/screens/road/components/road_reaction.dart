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
      margin: EdgeInsets.all(kDefaultPadding),
      child: Container(
        child: Row(
          children: [
            Icon(Icons.arrow_right),
            Text('102 '),
            Container(
              width: getProportionateScreenWidth(15.0),
              height: getProportionateScreenHeight(15.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/icons/empty_heart.png'))),
            ),
            Text(' 102')
          ],
        ),
      ),
    );
  }
}
