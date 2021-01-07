import 'package:chickpea/screens/home/components/long_card.dart';
import 'package:flutter/material.dart';
import './home_title.dart';

class HomeList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitle(
          title: 'My Status',
        ),
        SizedBox(
          height: 10.0,
        ),
        Column(
          children: [
            LongCard(
              title: 'My Challenge',
              subtitle: 'A score table',
            ),
            LongCard(
              title: 'My Plan',
              subtitle: 'A score table',
            )
          ],
        ),
      ],
    );
  }
}
