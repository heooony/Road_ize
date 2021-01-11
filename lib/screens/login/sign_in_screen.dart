import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.214,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('images/wow.jpg'))),
              ),
              Hero(
                tag: 'white',
                child: Container(
                  width: size.width,
                  height: size.height * 0.75,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  child: Container(
                    margin: EdgeInsets.all(kDefaultPadding * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        TextFieldTitle(
                          title: 'USERNAME',
                        ),
                        RoundedTextFiled(
                          hintText: 'Email or ID',
                        ),
                        Spacer(),
                        TextFieldTitle(
                          title: 'PASSWORD',
                        ),
                        RoundedTextFiled(
                          hintText: 'PASSWORD',
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
                          },
                          child: Container(
                            width: size.width * 0.5,
                            height: getProportionateScreenHeight(57.0),
                            decoration: BoxDecoration(
                                color: kSecondLightColor,
                                borderRadius: BorderRadius.circular(30.0),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          kSecondLightColor.withOpacity(0.23),
                                      offset: Offset(2, 10),
                                      blurRadius: 10.0)
                                ]),
                            child: Center(
                              child: Text(
                                'LOG IN',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17.0),
                              ),
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        BottomText(
                          firstText: 'New User? ',
                          secondText: 'Create an account',
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        BottomText(
                          firstText: 'Forget Password? ',
                          secondText: 'Find it',
                        ),
                      ],
                    ),
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

class BottomText extends StatelessWidget {
  BottomText({this.firstText, this.secondText});
  final firstText;
  final secondText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(text: firstText, style: TextStyle(color: Colors.black)),
        TextSpan(text: secondText, style: TextStyle(color: Colors.blue))
      ])),
    );
  }
}

class TextFieldTitle extends StatelessWidget {
  TextFieldTitle({this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20.0),
    );
  }
}

class RoundedTextFiled extends StatelessWidget {
  RoundedTextFiled({this.hintText});
  final hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 15.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: kDefaultPadding),
          hintText: hintText,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
    );
  }
}
