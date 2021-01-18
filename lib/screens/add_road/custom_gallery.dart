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
              Expanded(flex: 4, child: DragImage(Offset(0.0, 0.0), file)),
              DividedBar(),
              gridGallery,
            ],
          );
        },
      ),
    ));
  }
}

class DragImage extends StatefulWidget {
  final Offset position;
  final File image;

  DragImage(this.position, this.image);

  @override
  DragImageState createState() => DragImageState();
}

class DragImageState extends State<DragImage> {
  double _zoom;
  double _previousZoom;
  Offset _previousOffset;
  Offset _offset;
  Offset _position;
  File _image;

  @override
  void initState() {
    _zoom = 1.0;
    _previousZoom = null;
    _offset = Offset.zero;
    _position = widget.position;
    _image = widget.image;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(image: DecorationImage(image: FileImage(_image))),
    );
  }
}
