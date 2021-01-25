import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadize/screens/add_road/components/grid_gallery.dart';
import 'package:roadize/size_config.dart';
import 'package:vector_math/vector_math_64.dart';
import 'components/divided_bar.dart';

class CustomGallery extends StatefulWidget {
  @override
  CustomGalleryState createState() => CustomGalleryState();
}

class CustomGalleryState extends State<CustomGallery> {
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
          if (file == null) return Container();
          return Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(image: FileImage(file))),
                  )),
              DividedBar(),
              gridGallery,
            ],
          );
        },
      ),
    ));
  }
}
