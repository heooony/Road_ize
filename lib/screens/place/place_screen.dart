import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';

class PlaceScreen extends StatefulWidget {
  @override
  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 0.4,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                children: [
                  ImageCard(
                    imageName: '1',
                  ),
                  ImageCard(
                    imageName: '2',
                  ),
                  ImageCard(
                    imageName: '3',
                  ),
                  ImageCard(
                    imageName: '4',
                  ),
                  ImageCard(
                    imageName: '1',
                  ),
                  ImageCard(
                    imageName: '2',
                  ),
                  ImageCard(
                    imageName: '3',
                  ),
                  ImageCard(
                    imageName: '4',
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: kDefaultPadding * 0.5,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    10,
                    (index) => Container(
                      width: currentPage == index
                          ? SizeConfig.screenWidth * 0.05
                          : SizeConfig.screenWidth * 0.03,
                      height: currentPage == index
                          ? SizeConfig.screenWidth * 0.015
                          : SizeConfig.screenWidth * 0.006,
                      decoration: BoxDecoration(
                        color: currentPage == index
                            ? kSecondLightColor
                            : Colors.white,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  ImageCard({this.imageName});
  final imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight * 0.4,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('images/$imageName.jpg'),
                fit: BoxFit.cover)));
  }
}
