import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class RoadProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: kDefaultPadding * 0.5),
              height: SizeConfig.screenHeight * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/login_background.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 0.4,
                    height: getProportionateScreenHeight(37.0),
                    color: kSecondColor,
                    child: Center(
                      child: Text(
                        'Restaurants',
                        style: TextStyle(
                            color: Colors.white, fontSize: SizeConfig.fontSize),
                      ),
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth * 0.3,
                    height: getProportionateScreenHeight(37.0),
                    color: kPrimaryLightColor,
                    child: Center(
                      child: Text(
                        '+FOLLOW',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.fontSize * 0.8),
                      ),
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth * 0.1,
                    height: getProportionateScreenHeight(37.0),
                    color: kPrimaryColor,
                    child: Center(
                        child: Text(
                      '♥',
                      style: TextStyle(
                          color: Colors.red.withOpacity(0.7),
                          fontSize: SizeConfig.fontSize * 0.7),
                    )),
                  ),
                ],
              ),
            ),
            Positioned(
                top: kDefaultPadding,
                left: kDefaultPadding,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            Positioned(
                top: kDefaultPadding,
                right: kDefaultPadding,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ],
        ),
        Container(
          margin: EdgeInsets.all(kDefaultPadding),
          child: Row(
            children: [
              Text('▶ '),
              Text('102 '),
              Text(
                '♥ ',
                style: TextStyle(color: Colors.red.withOpacity(0.7)),
              ),
              Text('102 ')
            ],
          ),
        )
      ],
    );
  }
}
