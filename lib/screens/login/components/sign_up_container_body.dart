import 'package:flutter/material.dart';
import 'package:roadize/firebase.dart';
import 'package:roadize/screens/login/components/rounded_button.dart';
import 'package:roadize/screens/login/components/text_component.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'bottom_text.dart';

class SignUpContainerBody extends StatefulWidget {
  @override
  _SignUpContainerBodyState createState() => _SignUpContainerBodyState();
}

class _SignUpContainerBodyState extends State<SignUpContainerBody> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(kDefaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.black,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          TextComponent(
            title: 'USERNAME',
            hintText: 'EMAIL OR ID',
            tag: 'email',
          ),
          Spacer(),
          TextComponent(
            title: 'PASSWORD',
            hintText: 'Password',
            tag: 'password',
            errorText: 'Passwords do not match',
          ),
          Spacer(),
          TextComponent(
            title: 'CONFIRM PASSWORD',
            hintText: 'CONFIRM PASSWORD',
            tag: 'confirmPassword',
            errorText: 'Passwords do not match',
          ),
          Spacer(
            flex: 2,
          ),
          RoundedButton(
            text: 'CREATE',
            onTap: () async {
              if (MyFirebase.password == MyFirebase.confirmPassword) {
                MyFirebase.authCreateUser()
                    .then((value) => Navigator.pop(context));
              } else {
                setState(() {
                  TextComponent.validate2 = false;
                });
              }
            },
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
