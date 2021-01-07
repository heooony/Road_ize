import 'package:chickpea/screens/challenge/challenge_screen.dart';
import 'package:chickpea/screens/plan/plan_screen.dart';
import 'package:flutter/material.dart';
import 'package:chickpea/utilities/constants.dart';
import './home_title.dart';
import './short_card.dart';

class HomeList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitle(
          title: 'My Study',
        ),
        SizedBox(
          height: 10.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ShortCard(
                  title: 'Challenge',
                  colours: [kMainColor3, kMainColor4],
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChallengeScreen()));
                  }),
              ShortCard(
                  title: 'Plan',
                  colours: [kMainColor2, kMainColor3],
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PlanScreen()));
                  }),
              ShortCard(
                  title: 'Timer',
                  colours: [kSubColor1, kSubColor2],
                  press: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ChallengeScreen()));
                  }),
              ShortCard(
                  title: 'Calendar',
                  colours: [kMainColor6, kSubColor3.withOpacity(0.6)],
                  press: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ChallengeScreen()));
                  })
            ],
          ),
        )
      ],
    );
  }
}
