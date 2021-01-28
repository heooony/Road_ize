import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/road/components/road_post.dart';
import 'package:roadize/screens/user/components/road_display_rock.dart';
import 'package:roadize/size_config.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(30.0),
                  vertical: getProportionateScreenHeight(40.0),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: SizeConfig.fontSize * 0.7,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: '검색어를 입력하세요',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              Text(
                'New Road',
                style: TextStyle(
                    color: kPrimaryColor, fontSize: SizeConfig.fontSize),
              ),
              Container(
                height: SizeConfig.screenWidth * 0.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return displayCards[index];
                  },
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                width: SizeConfig.screenWidth,
                height: getProportionateScreenHeight(1.0),
              ),
              Text(
                'Road User',
                style: TextStyle(
                    color: kPrimaryColor, fontSize: SizeConfig.fontSize),
              ),
              Container(
                height: SizeConfig.screenWidth * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20.0)),
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: SizeConfig.screenWidth * 0.1,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/my_face.jpg'),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(10.0),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '김동헌',
                              style: TextStyle(
                                  fontSize: SizeConfig.fontSize,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '13 Road',
                              style: TextStyle(
                                  fontSize: SizeConfig.fontSize * 0.8),
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              fillColor: kPrimaryColor,
                              child: Text(
                                '구독',
                                style: TextStyle(
                                    fontSize: SizeConfig.fontSize * 0.6,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              constraints: BoxConstraints(
                                  minWidth: getProportionateScreenWidth(60.0),
                                  minHeight:
                                      getProportionateScreenHeight(20.0)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(20.0),
                        )
                      ],
                    );
                  },
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                width: SizeConfig.screenWidth,
                height: getProportionateScreenHeight(1.0),
              ),
              Text(
                'What\'s up?',
                style: TextStyle(
                    color: kPrimaryColor, fontSize: SizeConfig.fontSize),
              ),
              RoadPost(),
              RoadPost(),
              RoadPost()
            ],
          ),
        ),
      ),
    );
  }
}
