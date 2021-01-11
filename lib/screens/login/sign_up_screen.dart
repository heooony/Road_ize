import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/login/components/sign_up_container_body.dart';
import 'package:roadize/size_config.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: kPrimaryColor,
          body: SingleChildScrollView(
            child: Container(
              height: SizeConfig.safeAreaScreenHeight,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Stack(
                      children: [
                        Hero(
                          tag: 'container',
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0))),
                          ),
                        ),
                        SignUpContainerBody()
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/wow.jpg'))),
                  ))
                ],
              ),
            ),
          )),
    );
  }
}
