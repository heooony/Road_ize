import 'package:flutter/material.dart';
import 'package:roadize/firebase.dart';
import 'package:roadize/screens/home/home_screen.dart';
import 'package:roadize/screens/login/components/rounded_button.dart';
import 'package:roadize/screens/login/components/text_component.dart';
import '../../../constants.dart';
import '../sign_up_screen.dart';
import 'bottom_text.dart';

class SignInContainerBody extends StatefulWidget {
  @override
  _SignInContainerBodyState createState() => _SignInContainerBodyState();
}

class _SignInContainerBodyState extends State<SignInContainerBody> {
  @override
  Widget build(BuildContext context) {
    bool _validate = true;
    return Container(
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
          TextComponent(
            title: 'USERNAME',
            hintText: 'EMAIL OR ID',
            tag: 'email',
            errorText: 'Information does not exist',
          ),
          Spacer(),
          TextComponent(
            title: 'PASSWORD',
            hintText: 'Password',
            tag: 'password',
          ),
          Spacer(
            flex: 2,
          ),
          RoundedButton(
            text: 'SIGN IN',
            onTap: () async {
              await MyFirebase.authSignInUser().then((value) {
                if (value == true) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                } else {
                  setState(() {
                    TextComponent.validate = false;
                  });
                }
              });
            },
          ),
          Spacer(
            flex: 2,
          ),
          BottomText(
            firstText: 'New User? ',
            secondText: 'Create an account',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          BottomText(
            firstText: 'Forget Password? ',
            secondText: 'Find it',
          ),
          Spacer()
        ],
      ),
    );
  }
}
