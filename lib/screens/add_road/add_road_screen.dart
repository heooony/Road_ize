import 'dart:io';
import 'package:flutter/material.dart';
import 'package:roadize/screens/add_road/components/photo_text.dart';
import 'package:roadize/screens/add_road/components/rounded_button.dart';
import 'package:roadize/screens/add_road/components/rounded_icon.dart';
import 'package:roadize/screens/add_road/custom_gallery.dart';
import 'package:roadize/size_config.dart';
import '../../firebase.dart';
import 'components/preview.dart';
import 'components/road_title.dart';

class AddRoadScreen extends StatefulWidget {
  @override
  _AddRoadScreenState createState() => _AddRoadScreenState();
}

class _AddRoadScreenState extends State<AddRoadScreen> {
  String title;
  @override
  void initState() {
    super.initState();
  }

  void callback(value) {
    setState(() {
      title = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: SizeConfig.safeAreaScreenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(
                  flex: 3,
                ),
                Preview(),
                Spacer(
                  flex: 2,
                ),
                RoadTitle(
                  callback: callback,
                ),
                Spacer(),
                PhotoText(),
                Spacer(
                  flex: 2,
                ),
                RoundedIcon(),
                Spacer(
                  flex: 2,
                ),
                RoundedButton(
                  text: '등록',
                  onTap: () async {
                    await MyFirebase.uploadImageToStorage(
                            CustomGalleryState.selectFile, title)
                        .then((value) async {
                      print(
                          '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
                      await MyFirebase.setStoreData(
                          'map', 'title', title, 'downloadURL', value);
                      Navigator.pop(context);
                    });
                  },
                ),
                Spacer(),
                RoundedButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  text: '취소',
                ),
                Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
