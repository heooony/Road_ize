import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';

import 'components/road_function.dart';
import 'components/road_information.dart';
import 'components/road_profile.dart';

class RoadScreen extends StatefulWidget {
  @override
  _RoadScreenState createState() => _RoadScreenState();
}

class _RoadScreenState extends State<RoadScreen> {
  ScrollController _scrollController = new ScrollController(
    initialScrollOffset: 0.0,
    keepScrollOffset: true,
  );

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            RoadProfile(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RoadFunction(),
                RoadInformation(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
