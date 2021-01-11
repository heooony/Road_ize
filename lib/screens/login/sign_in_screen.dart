import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';
import 'components/sign_in_container_body.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: SizedBox(
            height: SizeConfig.safeAreaScreenHeight,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/wow.jpg'))),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Hero(
                        tag: 'container',
                        child: Container(
                          width: SizeConfig.screenWidth,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      SignInContainerBody(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
