import 'package:flutter/material.dart';
import '../../../constants.dart';
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
                  colours: [kPrimaryColor, kPrimaryLightColor],
                  press: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ChallengeScreen()));
                  }),
            ],
          ),
        )
      ],
    );
  }
}
