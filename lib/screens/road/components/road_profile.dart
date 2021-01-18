import 'package:flutter/material.dart';
import 'package:roadize/screens/road/components/road_reaction.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class RoadProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return SliverAppBar(
      automaticallyImplyLeading: false,
      collapsedHeight: SizeConfig.screenHeight * 0.2,
      elevation: 0,
      floating: true,
      pinned: true,
      snap: false,
      toolbarHeight: kToolbarHeight,
      expandedHeight: size.height * 0.4,
      backgroundColor: Colors.white.withOpacity(0.0),
      flexibleSpace: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: kDefaultPadding),
            height: SizeConfig.screenHeight * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/login_background.jpg'),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: SizeConfig.screenHeight * 0.1,
            left: kDefaultPadding,
            child: Container(
              width: SizeConfig.screenWidth * 0.7,
              child: Text(
                '24년 인생을 건 완벽한, 어느새 김경희는 늙었다.',
                style: TextStyle(
                    height: 1.4,
                    color: Colors.white,
                    fontSize: SizeConfig.fontSize * 1.4,
                    fontFamily: 'nexon_medium'),
              ),
            ),
          ),
          Positioned(right: 0, bottom: 0, child: ProfileCard()),
          Positioned(
              top: kDefaultPadding,
              right: kDefaultPadding,
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class ProfileCard extends StatefulWidget {
  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  bool activeHeart = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: SizeConfig.screenWidth * 0.7,
          height: getProportionateScreenHeight(37.0),
          color: kSecondColor,
          child: Center(child: RoadReaction()),
        ),
        Container(
          width: SizeConfig.screenWidth * 0.2,
          height: getProportionateScreenHeight(37.0),
          color: kPrimaryLightColor,
          child: Center(
            child: Text(
              '+ADD',
              style: TextStyle(
                  color: Colors.black, fontSize: SizeConfig.fontSize * 0.8),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
              width: SizeConfig.screenWidth * 0.1,
              height: getProportionateScreenHeight(37.0),
              padding: EdgeInsets.all(
                  getProportionateScreenWidth(kDefaultPadding * 0.4)),
              color: kPrimaryColor,
              child: activeHeart
                  ? Image.asset(
                      'images/icons/heart.png',
                    )
                  : Image.asset(
                      'images/icons/empty_heart.png',
                    )),
        ),
      ],
    );
  }
}
