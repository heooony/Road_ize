import 'package:flutter/material.dart';
import 'package:roadize/screens/road/road_screen.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class RoadDisplayRack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.screenHeight * 0.2,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white.withOpacity(0.1),
            Colors.white.withOpacity(0.1),
            Colors.black.withOpacity(0.2)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoadCard(),
            ],
          ),
        )
      ],
    );
  }
}

class RoadCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RoadScreen()));
      },
      child: Container(
        width: SizeConfig.screenWidth * 0.25,
        height: SizeConfig.screenHeight * 0.15,
        padding: EdgeInsets.only(
            left: kDefaultPadding * 0.5, bottom: kDefaultPadding),
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('images/login_background.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.srgbToLinearGamma()),
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -5),
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 50.0)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Restaurants',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.fontSize * 0.9,
              ),
            ),
            Text(
              'View -->',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
