import 'package:flutter/material.dart';
import '../../../constants.dart';

class TextComponent extends StatelessWidget {
  TextComponent({this.title, this.hintText});
  final title;
  final hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20.0),
        ),
        TextField(
          style: TextStyle(fontSize: 15.0),
          autofocus: false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: kDefaultPadding),
              hintText: hintText,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0))),
        ),
      ],
    );
  }
}
