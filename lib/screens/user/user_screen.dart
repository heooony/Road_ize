import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';

import 'components/division_line.dart';
import 'components/menu_icon.dart';
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          splashColor: kSecondLightColor,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: Container(
          child: Column(
            children: [
              MenuIcon(),
              UserInterface(),
              SizedBox(
                height: SizeConfig.safeAreaScreenHeight * 0.04,
              ),
              UserStatisticContainer(),
              SizedBox(
                height: 30.0,
              ),
              DivisionLine(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
