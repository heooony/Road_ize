import 'package:flutter/material.dart';
import 'package:roadize/screens/road/road_screen.dart';
import 'package:roadize/size_config.dart';
import '../../../constants.dart';

class RoadDisplayRack extends StatelessWidget {
  final List<DisplayCard> displayCards = [
    DisplayCard(
      title: '하늘이 맑을 때 가기 좋은 곳',
      image: 'images/1.jpg',
      roadCount: 15,
    ),
    DisplayCard(
      title: '연남동 작은 카페',
      image: 'images/login_background.jpg',
      roadCount: 13,
    ),
    DisplayCard(
      title: 'When you people talked shits and made fun of me',
      image: 'images/3.jpg',
      roadCount: 5,
    ),
    DisplayCard(
      title: 'MAKE no music: 전시회',
      image: 'images/4.jpg',
      roadCount: 8,
    ),
    DisplayCard(
      title: '성남의 아들이라 불릴 수 있는 곳',
      image: 'images/2.jpg',
      roadCount: 21,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GridView.builder(
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return displayCards[index];
      },
    );
  }
}

class DisplayCard extends StatelessWidget {
  DisplayCard({this.title, this.image, this.roadCount});
  final title;
  final image;
  final roadCount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RoadScreen()));
      },
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(10.0),
                    right: getProportionateScreenWidth(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Text(title),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: kPrimaryColor,
                            size: SizeConfig.fontSize * 0.8,
                          ),
                          Text(
                            '$roadCount road',
                            style:
                                TextStyle(fontSize: SizeConfig.fontSize * 0.7),
                          )
                        ],
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
