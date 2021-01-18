import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/add_road/components/grid_gallery.dart';
import 'package:roadize/size_config.dart';

import 'components/divided_bar.dart';

class CustomGallery extends StatefulWidget {
  @override
  CustomGalleryState createState() => CustomGalleryState();
}

class CustomGalleryState extends State<CustomGallery> {
  static Future<File> imageFile;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
                child: Image.file(
                  file,
                  fit: BoxFit.scaleDown,
                ),
              ),
              DividedBar(),
              GridGallery(),
            ],
          );
        },
      ),
    ));
  }
}
