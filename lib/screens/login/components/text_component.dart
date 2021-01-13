import 'package:flutter/material.dart';
import 'package:roadize/firebase.dart';
import '../../../constants.dart';

class TextComponent extends StatefulWidget {
  TextComponent({this.title, this.hintText, this.tag, this.errorText});
  final title;
  final hintText;
  final tag;
  final errorText;
  static bool validate = true;
  static bool validate2 = true;

  @override
  _TextComponentState createState() => _TextComponentState();
}

class _TextComponentState extends State<TextComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(fontSize: 16.0),
        ),
        TextField(
          style: TextStyle(fontSize: 12.0),
          autofocus: false,
          onChanged: (newValue) {
            if (widget.tag == 'email')
              MyFirebase.email = newValue;
            else if (widget.tag == 'password')
              MyFirebase.password = newValue;
            else if (widget.tag == 'confirmPassword')
              MyFirebase.confirmPassword = newValue;
          },
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: kDefaultPadding),
              hintText: widget.hintText,
              errorText: null,
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(40.0)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0))),
        ),
      ],
    );
  }
}
