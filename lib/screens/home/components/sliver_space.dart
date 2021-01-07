import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utilities/constants.dart';

class SliverSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          decoration: BoxDecoration(
              color: kMainColor2,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0))),
          child: Padding(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: size.height * 0.15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Hi, Yourname\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'nexon_light',
                            fontSize: size.width * 0.07)),
                    TextSpan(
                        text: 'This is your workshop.',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontFamily: 'nexon_light',
                            fontSize: size.width * 0.05))
                  ]),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: size.width * 0.13,
                  backgroundImage: null,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: EdgeInsets.only(
                left: kDefaultPadding, bottom: size.height * 0.3),
            child: GestureDetector(
              child: Image.asset(
                'images/icons/menu.png',
                scale: size.width * 0.05,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: kDefaultPadding * 1.5,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20.0,
                    color: kMainColor2.withOpacity(0.2))
              ]),
              child: TextField(
                style: TextStyle(
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                    hintText: 'Search',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none)),
              ),
            )),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Icon(
              Icons.menu,
              color: Colors.white.withOpacity(0.6),
            ))
      ],
    );
  }
}
