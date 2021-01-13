import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class RoadDetails extends StatefulWidget {
  static int number = 0;

  @override
  _RoadDetailsState createState() => _RoadDetailsState();
}

class _RoadDetailsState extends State<RoadDetails> {
  List<String> location = [
    '서울특별시 중구 세종대로 110 서울특별시청asd asdada',
    '경기도 성남시 중원구 성남대로 997',
    '대구광역시 중구 공평로 88',
    '강원도 춘천시 중앙로 1 강원도청'
  ];

  List<String> introduce = [
    '서기전 18년 백제 시조 온조왕이 도읍지로 정한 하남위례성의 옛터로 추정되는 유서 깊은 지역으로서, 고구려 장수왕이 475년에 남하하여 한산성을 함락하고 북한산군을 설치, 551년 백제성왕이 신라와 연합군을 결성 한산성을 탈환하였고, 553년 신라 진흥왕이 한산성을 빼앗아 신주를 설치하였고, 557(진흥왕18)에 신주를 폐하고 북한산주를 설치하였으며, 다시 568년 (진흥왕29)에 북한산주를 폐지하고 남천주를 설치하였으며 604년(진평왕26)에 남천주를 폐하고 북한산주를 설치하였다가 662년(문무왕 2) 남천주가 설치되고, 664년 한산주로 개칭되고, 767(경덕왕16)에 시행된 한화정책에 따라 한주로 개명되었음.',
    '영국의 물리학자이자 근대 이론 과학의 선구자이기도 한 뉴턴은 달의 운동과 케플러의 법칙을 연관시켜, 달과 지구 사이에 작용하는 힘은 달과 지구의 질량의 곱에 비례하고 거리의 제곱에 반비례한다는 것을 알아냈다. 이러한 만유인력(萬有引力)의 법칙을 식으로 나타내면 다음과 같다.',
    '태양이나 행성 같은 우주의 모든 물체 사이에는 서로 당기는 힘 F가 작용하며, 물체의 종류 또는 물체 사이에 존재하는 매질(媒質)과는 관계없이 그 물체의 질량 m, m의 곱에 비례하고, 두 물체의 질점 사이의 거리 r의 제곱에 반비례한다는 법칙을 말한다.',
    '만유인력은 우리가 항상 느끼고 있는 힘이다. 만유인력의 법칙에 의하면 사람이 하늘을 날지 않고 땅위를 걸어다닐 수 있는 것은 이러한 만유인력때문이다. 사과와 같은 물체가 땅위로 떨어지는 것도 만유인력이 있기 때문이다. 태양과 지구 사이에도 만유인력이 존재하여 공전운동이 가능하다.'
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: kSecondColor,
            ),
            Container(
              width: SizeConfig.screenWidth * 0.6,
              child: Text(location[RoadDetails.number],
                  style: TextStyle(
                      fontSize: SizeConfig.fontSize * 0.8,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: EdgeInsets.only(right: kDefaultPadding),
          child: Text(introduce[RoadDetails.number]),
        ),
      ],
    );
  }
}
