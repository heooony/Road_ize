import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class UserInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      padding: EdgeInsets.only(
          top: kDefaultPadding * 3,
          left: kDefaultPadding,
          right: kDefaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: SizeConfig.screenWidth * 0.15,
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
                            fontSize: SizeConfig.fontSize * 0.9,
                            fontFamily: 'nexon_light')),
                    TextSpan(
                        text: '안녕하세요. 현재 개발 중에 있구요, 별건 없는데 그냥 둘러봐주세용. 감사합니다.',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.fontSize * 0.5,
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
          ),
        ],
      ),
    );
  }
}
