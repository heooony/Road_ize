import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';
import 'hashtag_card.dart';

class RatingHashtag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SizedBox(
      height: SizeConfig.screenHeight * 0.1,
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'ROAD STAR',
                style: TextStyle(fontSize: SizeConfig.fontSize * 0.8),
              ),
              RatingBarIndicator(
                rating: 2.75,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: kPrimaryLightColor,
                ),
                itemCount: 5,
                itemSize: getProportionateScreenWidth(20.0),
                direction: Axis.horizontal,
              ),
              Text(
                'rating : 2.75',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          )),
          Container(
            width: 2.0,
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.8),
            color: Colors.black.withOpacity(0.4),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'HASH TAG',
                style: TextStyle(fontSize: SizeConfig.fontSize * 0.8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HashTagCard(
                    icon: Icons.accessible_outlined,
                  ),
                  HashTagCard(icon: Icons.add_a_photo_outlined),
                  HashTagCard(
                    icon: Icons.whatshot,
                  ),
                  HashTagCard(
                    icon: Icons.anchor_outlined,
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
