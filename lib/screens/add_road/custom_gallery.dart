import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadize/firebase.dart';
import 'package:roadize/screens/add_road/components/grid_gallery.dart';
import 'package:roadize/size_config.dart';
import '../../constants.dart';

class CustomGallery extends StatefulWidget {
  @override
  CustomGalleryState createState() => CustomGalleryState();
}

class CustomGalleryState extends State<CustomGallery> {
  static File selectFile;
  static Future<File> imageFile;
  GridGallery gridGallery;

  @override
  void initState() {
    super.initState();
    gridGallery = GridGallery(this.callback);
  }

  void callback(Future<File> image) {
    setState(() {
      imageFile = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
        child: Scaffold(
      body: FutureBuilder<File>(
        initialData: File(''),
        future: imageFile,
        builder: (context, snapshot) {
          final file = snapshot.data;
          selectFile = file;
          if (file == null) return Container();
          return Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: FileImage(file), fit: BoxFit.cover),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Row(
                    children: [
                      Text(
                        '앨범',
                        style: TextStyle(fontSize: SizeConfig.fontSize * 1.2),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          '버튼',
                          style: TextStyle(fontSize: SizeConfig.fontSize * 1.2),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              gridGallery,
            ],
          );
        },
      ),
    ));
  }
}
