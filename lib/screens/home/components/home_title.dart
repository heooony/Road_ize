import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeTitle extends StatelessWidget {
  HomeTitle({@required this.title, this.onTap});
  final title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width * 0.2,
            height: 10.0,
            color: kPrimaryColor.withOpacity(0.4),
          ),
        ),
        Row(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: size.width * 0.05),
            ),
            Spacer(),
            InkWell(
              child: Text(
                'See all',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: onTap,
            )
          ],
        ),
      ],
    );
  }
}
