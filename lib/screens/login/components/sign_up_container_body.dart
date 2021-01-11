import 'package:flutter/material.dart';
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
          Spacer(),
          TextComponent(
            title: 'CONFIRM PASSWORD',
            hintText: 'CONFIRM PASSWORD',
          ),
          Spacer(
            flex: 2,
          ),
          RoundedButton(
            text: 'SIGN UP',
            onTap: () {
              Navigator.pop(context);
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
