import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadize/screens/add_place/add_place_screen.dart';
import 'package:roadize/screens/add_place/components/grid_gallery.dart';
import 'package:roadize/size_config.dart';

import '../../constants.dart';

class CustomGallery extends StatefulWidget {
  @override
  CustomGalleryState createState() => CustomGalleryState();
}

class CustomGalleryState extends State<CustomGallery> {
  static File selectFile;
  static Future<File> imageFile;
  List<Future<File>> photos = [];
  GridGallery gridGallery;
  int currentPage;

  @override
  void initState() {
    super.initState();
    gridGallery = GridGallery(this.callback, this.callback2);
    currentPage = 0;
  }

  void callback(photos) {
    setState(() {
      this.photos = photos;
    });
  }

  void callback2(index) {
    print(currentPage);
    print(index);
    if (currentPage == photos.length && currentPage != 0) {
      if (currentPage >= index)
        setState(() {
          currentPage--;
        });
    }
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AddPlaceScreen(photos: photos)));
                },
                child: Text(
                  "다음",
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
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  children: [
                    for (Future<File> f in photos)
                      FutureBuilder<File>(
                        initialData: File(''),
                        future: f,
                        builder: (context, snapshot) {
                          final file = snapshot.data;
                          if (file == null) {
                            return Container();
                          }
                          return Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: FileImage(file),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                  ],
                ),
                Positioned(
                    bottom: kDefaultPadding * 0.5,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        photos.length,
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
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.8),
              child: Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: getProportionateScreenWidth(15.0),
                      backgroundColor: kSecondColor,
                      child: Image.asset(
                        'images/icons/camera.png',
                        width: getProportionateScreenWidth(25.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 6, child: gridGallery),
        ],
      ),
    ));
  }
}
