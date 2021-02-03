import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/add_place/components/rating_hashtag.dart';
import 'package:roadize/size_config.dart';

class AddPlaceScreen extends StatefulWidget {
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "ROAD-IZE",
              style: TextStyle(
                fontSize: SizeConfig.fontSize * 1.2,
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: kDefaultPadding),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddPlaceScreen()));
                    },
                    child: Text(
                      "등록",
                      style: TextStyle(
                          fontSize: SizeConfig.fontSize, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.white,
            toolbarHeight: SizeConfig.screenHeight * 0.07,
            elevation: 1,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.1),
              child: Container(
                height: SizeConfig.safeAreaScreenHeight * 0.9,
                child: Column(
                  children: [
                    Spacer(),
                    TextContainer(
                      title: "TITLE",
                      hintText: "제목을 입력하세요",
                      maxLines: 1,
                      flex: 2,
                    ),
                    TextContainer(
                      title: "STORY",
                      hintText: "내용을 입력하세요",
                      maxLines: 10,
                      flex: 7,
                    ),
                    TextContainer(
                      title: "ADDRESS",
                      hintText: "장소의 위치 및 주소를 입력하세요",
                      maxLines: 1,
                      flex: 2,
                    ),
                    TextContainer(
                      title: "PS",
                      hintText: "주의사항 및 이용팁을 입력 혹은 선택하세요",
                      maxLines: 1,
                      flex: 2,
                    ),
                    TextContainer(
                      title: "ROADSTAR",
                      maxLines: 1,
                      flex: 2,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class TextContainer extends StatelessWidget {
  TextContainer({this.title, this.hintText, this.maxLines, this.flex});
  final title;
  final hintText;
  final maxLines;
  final flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: SizeConfig.fontSize * 1.4,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            style: TextStyle(fontSize: SizeConfig.fontSize * 0.8),
            maxLines: maxLines,
            decoration: InputDecoration(
                hintText: hintText == null ? null : hintText,
                contentPadding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                border: OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        ],
      ),
    );
  }
}
