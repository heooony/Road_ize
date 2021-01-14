import 'package:flutter/material.dart';
import 'package:roadize/screens/place/components/rating_hashtag.dart';
import 'package:roadize/size_config.dart';
import '../../../constants.dart';

import 'hashtag_card.dart';

class PlaceInformation extends StatefulWidget {
  @override
  _PlaceInformationState createState() => _PlaceInformationState();
}

class _PlaceInformationState extends State<PlaceInformation> {
  final List<String> location = [
    '서울특별시 중구 세종대로 110 서울특별시청asd asdada',
  ];

  final List<String> introduce = [
    '서기전 18년 백제 시조 온조왕이 도읍지왕29)에 북한산입니다. 제가 사는 곳은 어디어디구요 그냥 테스트용으로 말을 길게 쓰려고 하다보니 할 말이 없네요. 제가 잠깐 군대있던 썰을 풀어볼까요. 저는 예비군이었습니다. 경남 진주시에 근무지가 있어 사람들이 사투리를 쓰는데 무섭더라고요. 예비군선배님들 그러시면 안됩니다. 막 명령하는데 제가 명령 당하게 되고 무섭고 문신막있고 뭐라 하고 그냥 완전 무서웠어요. 결론은 예비군 선배님들이 짱이었다는 거에요. 어느 정도 말이 길어졌네요. 그럼 여기서 그만두도록 하죠.'
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth * 0.15, vertical: kDefaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: kSecondColor,
              ),
              SizedBox(
                width: kDefaultPadding * 0.25,
              ),
              Expanded(
                child: Text(location[0],
                    style: TextStyle(
                        fontSize: SizeConfig.fontSize * 0.8,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(introduce[0]),
          SizedBox(
            height: kDefaultPadding,
          ),
          RatingHashtag()
        ],
      ),
    );
  }
}
