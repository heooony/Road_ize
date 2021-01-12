import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  BottomText({this.firstText, this.secondText, this.onTap});
  final firstText;
  final secondText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(firstText,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
          InkWell(
            onTap: onTap,
            child: Text(secondText,
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
          )
        ],
      ),
    );
  }
}
