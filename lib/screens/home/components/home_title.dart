import 'package:flutter/material.dart';
import 'package:chickpea/utilities/constants.dart';

class HomeTitle extends StatelessWidget {
  HomeTitle({this.title});
  final title;

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
            color: kMainColor3.withOpacity(0.4),
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
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }
}
