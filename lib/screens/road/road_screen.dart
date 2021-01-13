import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';

import 'components/road_reaction.dart';
import 'components/road_post.dart';
import 'components/road_information.dart';
import 'components/road_profile.dart';

class RoadScreen extends StatefulWidget {
  @override
  _RoadScreenState createState() => _RoadScreenState();
}

class _RoadScreenState extends State<RoadScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            RoadProfile(),
            SliverToBoxAdapter(
              child: Scrollbar(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    RoadPost(),
                    RoadPost(),
                    RoadPost(),
                    RoadPost(),
                    RoadPost()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
