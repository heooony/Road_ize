import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

import '../../../constants.dart';

class Preview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: SizeConfig.screenWidth * 0.85,
      height: SizeConfig.screenWidth * 0.85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: Colors.black.withOpacity(0.5), width: 0.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 1,
          ),
          Text(
            'PREVIEW',
            style: TextStyle(fontSize: SizeConfig.fontSize * 1.0),
          ),
          Spacer(
            flex: 1,
          ),
          PreviewImage(),
          Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}

class PreviewImage extends StatefulWidget {
  @override
  PreviewImageState createState() => PreviewImageState();
}

class PreviewImageState extends State<PreviewImage> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.53,
      height: SizeConfig.screenWidth * 0.53,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.9), width: 0.3)),
      child: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/1.jpg'))),
              )),
          Expanded(
            flex: 2,
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
                  Text(text == null ? '테마의 제목을 입력하세요' : text),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: kPrimaryColor,
                        size: SizeConfig.fontSize * 0.8,
                      ),
                      Text(
                        '0 road',
                        style: TextStyle(fontSize: SizeConfig.fontSize * 0.7),
                      )
                    ],
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
