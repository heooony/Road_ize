import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/add_road/add_road_screen.dart';
import 'package:roadize/size_config.dart';
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
        backgroundColor: kPrimaryColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          splashColor: kSecondLightColor,
          child: Icon(
            Icons.add,
            color: kSecondColor,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddRoadScreen()));
          },
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    MenuIcon(),
                    UserInterface(),
                    SizedBox(
                      height: SizeConfig.safeAreaScreenHeight * 0.04,
                    ),
                    UserStatisticContainer(),
                  ],
                ),
              ),
              Expanded(child: RoadDisplayRack()),
            ],
          ),
        ),
      ),
    );
  }
}
