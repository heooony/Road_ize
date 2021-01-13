import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';

import 'components/road_display_rock.dart';
import 'components/user_interface.dart';
import 'components/user_statistics_container.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              UserInterface(),
              SizedBox(
                height: SizeConfig.safeAreaScreenHeight * 0.04,
              ),
              UserStatisticContainer(),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ROAD ',
                    style: TextStyle(color: kSecondColor),
                  ),
                  Container(
                    width: SizeConfig.screenWidth * 0.7,
                    height: 2,
                    color: kPrimaryColor,
                  ),
                  Text(
                    ' IZE',
                    style: TextStyle(color: kSecondColor),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      RoadDisplayRack(),
                      RoadDisplayRack(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
