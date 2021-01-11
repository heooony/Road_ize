import 'package:flutter/material.dart';
import 'package:roadize/screens/login/components/rounded_button.dart';
import 'package:roadize/screens/login/components/text_component.dart';
import '../../../constants.dart';
import '../sign_up_screen.dart';
import 'bottom_text.dart';

class SignInContainerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          ),
          Spacer(),
          TextComponent(
            title: 'PASSWORD',
            hintText: 'Password',
          ),
          Spacer(
            flex: 2,
          ),
          RoundedButton(
            text: 'SIGN IN',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
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
          Spacer()
        ],
      ),
    );
  }
}
