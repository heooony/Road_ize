import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding * 3),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.15,
                    backgroundImage: AssetImage('images/my_face.jpg'),
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Dongheon, Kim\n\n',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: size.width * 0.043,
                                    fontFamily: 'nexon_light')),
                            TextSpan(
                                text:
                                    '안녕하세요. 현재 개발 중에 있구요, 별건 없는데 그냥 둘러봐주세용. 감사합니다.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: size.width * 0.025,
                                    fontFamily: 'nexon_light'))
                          ])),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                '구독',
                                style: TextStyle(color: kSecondColor),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '로드\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size.width * 0.025,
                            fontFamily: 'nexon_light')),
                    TextSpan(
                        text: '150',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size.width * 0.043,
                            fontFamily: 'nexon_light')),
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '팔로워\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size.width * 0.025,
                            fontFamily: 'nexon_light')),
                    TextSpan(
                        text: '140',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size.width * 0.043,
                            fontFamily: 'nexon_light')),
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '팔로잉\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size.width * 0.025,
                            fontFamily: 'nexon_light')),
                    TextSpan(
                        text: '45',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size.width * 0.043,
                            fontFamily: 'nexon_light')),
                  ])),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
