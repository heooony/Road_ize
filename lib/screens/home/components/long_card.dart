import 'package:flutter/material.dart';

import '../../../utilities/constants.dart';

class LongCard extends StatelessWidget {
  LongCard({@required this.title, @required this.subtitle});
  final title;
  final subtitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          padding: EdgeInsets.all(kDefaultPadding / 2),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.grey.withOpacity(0.5)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(10, 10),
                    blurRadius: 10.0,
                    color: Colors.black.withOpacity(0.1))
              ]),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '$title\n',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'nexon_light',
                      fontSize: size.width * 0.05)),
              TextSpan(
                  text: '$subtitle',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontFamily: 'nexon_light',
                      fontSize: size.width * 0.04)),
            ]),
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        )
      ],
    );
  }
}
