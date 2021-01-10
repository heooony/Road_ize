import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadize/screens/login/login_screen.dart';
import 'package:roadize/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ROAD_IZE',
                style:
                    TextStyle(color: Colors.white, fontSize: size.width * 0.1),
              ),
              SizedBox(height: getProportionateScreenHeight(17.0)),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                  width: getProportionateScreenWidth(120.0),
                  height: getProportionateScreenHeight(40.0),
                  child: Center(
                    child: Text(
                      'Join',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: kSecondLightColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(2, 5),
                            blurRadius: 5.0)
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
