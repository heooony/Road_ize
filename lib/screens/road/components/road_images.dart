import 'package:flutter/material.dart';
import 'package:roadize/screens/place/place_screen.dart';
import 'package:roadize/size_config.dart';

class RoadImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                width: SizeConfig.screenHeight * 0.13,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/1.jpg'), fit: BoxFit.cover)),
              ),
              Container(
                width: SizeConfig.screenHeight * 0.13,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/2.jpg'), fit: BoxFit.cover)),
              ),
              Container(
                width: SizeConfig.screenHeight * 0.13,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/3.jpg'), fit: BoxFit.cover)),
              ),
              Container(
                width: SizeConfig.screenHeight * 0.13,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/4.jpg'), fit: BoxFit.cover)),
              ),
            ],
          );
        },
      ),
    );
  }
}
