import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';

class TempScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(
          getProportionateScreenWidth(20.0),
        ),
        child: ListWheelScrollView(
          itemExtent: SizeConfig.screenHeight * 0.65,
          physics: FixedExtentScrollPhysics(),
          magnification: 1.0,
          perspective: 0.005,
          overAndUnderCenterOpacity: 0.5,
          diameterRatio: 4.0,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('images/1.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstIn),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.only(
                        right: kDefaultPadding,
                        left: kDefaultPadding,
                        bottom: kDefaultPadding * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '하늘이 맑을 때 가기 좋은 곳',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.fontSize * 1.3),
                        ),
                        Text(
                          'Designed by PotDongheon',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.fontSize * 1.2),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: kSecondColor,
                            ),
                            Text(
                              '15 Road',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.fontSize * 1.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('images/2.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstIn),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.only(
                        right: kDefaultPadding,
                        left: kDefaultPadding,
                        bottom: kDefaultPadding * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '아무것도 하기 싫을 때, 그냥 이 길을 걸어보세요',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.fontSize * 1.3),
                        ),
                        Text(
                          'Designed by PotDongheon',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.fontSize * 1.2),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: kSecondColor,
                            ),
                            Text(
                              '15 Road',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.fontSize * 1.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('images/3.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstIn),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.only(
                        right: kDefaultPadding,
                        left: kDefaultPadding,
                        bottom: kDefaultPadding * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '판교에는 예술품이 정말 많아요 그 중에 몇개 추려봤어요',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.fontSize * 1.3),
                        ),
                        Text(
                          'Designed by PotDongheon',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.fontSize * 1.2),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: kSecondColor,
                            ),
                            Text(
                              '15 Road',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.fontSize * 1.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
