import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/add_place/components/empty_hashtag_card.dart';
import 'package:roadize/screens/add_place/components/hashtag_card.dart';
import 'package:roadize/size_config.dart';

import '../../firebase.dart';

class AddPlaceScreen extends StatefulWidget {
  AddPlaceScreen({this.photos});
  final photos;

  @override
  AddPlaceScreenState createState() => AddPlaceScreenState();
}

class AddPlaceScreenState extends State<AddPlaceScreen> {
  double rating;
  static List<HashTagCard> hashtag = [];
  static List<String> hashtagName = [];
  TextEditingController title = TextEditingController();
  TextEditingController story = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController ps = TextEditingController();

  @override
  void initState() {
    super.initState();
    rating = 0;
  }

  void callback() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    hashtag.clear();
  }

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
                      print(widget.photos);
                      print(title.text);
                      print(story.text);
                      print(address.text);
                      print(hashtag);
                      print(rating);
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    TextContainer(
                      title: "TITLE",
                      hintText: "제목을 입력하세요",
                      maxLines: 1,
                      flex: 2,
                      controller: title,
                    ),
                    TextContainer(
                      title: "STORY",
                      hintText: "내용을 입력하세요",
                      maxLines: 10,
                      flex: 7,
                      controller: story,
                    ),
                    TextContainer(
                      title: "ADDRESS",
                      hintText: "장소의 위치 및 주소를 입력하세요",
                      maxLines: 1,
                      flex: 2,
                      controller: address,
                    ),
                    TextContainer(
                      title: "PS",
                      hintText: "주의사항 및 이용팁을 입력하세요",
                      maxLines: 1,
                      flex: 2,
                      type: 'hash',
                      controller: ps,
                      callback: callback,
                    ),
                    Container(
                      height: getProportionateScreenHeight(30.0),
                      child: hashtag.length == 0
                          ? EmptyHashTagCard()
                          : ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: hashtag,
                                );
                              },
                            ),
                    ),
                    Spacer(),
                    Text(
                      "ROAD STAR",
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.027,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (rating == 5) rating = -0.5;
                              setState(() {
                                rating += 0.5;
                              });
                            },
                            child: RatingBarIndicator(
                              rating: rating,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: kPrimaryLightColor,
                              ),
                              itemCount: 5,
                              itemSize: getProportionateScreenWidth(20.0),
                              direction: Axis.horizontal,
                            ),
                          ),
                          Text(
                            '$rating / 5',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
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
  TextContainer({
    this.title,
    this.hintText,
    this.maxLines,
    this.flex,
    this.type,
    this.callback,
    this.controller,
  });
  final title;
  final hintText;
  final maxLines;
  final flex;
  final type;
  final Function callback;
  final controller;

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
                fontSize: SizeConfig.screenHeight * 0.027,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: controller,
            style: TextStyle(fontSize: SizeConfig.screenHeight * 0.018),
            maxLines: maxLines,
            decoration: InputDecoration(
              isDense: true,
              hintText: hintText == null ? null : hintText,
              contentPadding: EdgeInsets.only(top: kDefaultPadding * 0.5),
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
            onSubmitted: (value) {
              if (type == 'hash') {
                controller.clear();
                AddPlaceScreenState.hashtag
                    .add(HashTagCard(name: value, callback: callback));
              }
            },
          ),
        ],
      ),
    );
  }
}
