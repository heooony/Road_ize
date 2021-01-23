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
  double _zoom;
  double _previousZoom;
  Offset _previousOffset;
  Offset _offset;
  Offset _position;
  File _image;

  @override
  void initState() {
    super.initState();
    _zoom = 1.0;
    _previousZoom = null;
    _offset = Offset.zero;
    _position = Offset(0, 0);
    gridGallery = GridGallery(this.callback);
  }

  void callback(Future<File> image) {
    setState(() {
      imageFile = image;
    });
  }

  void _handleScaleStart(ScaleStartDetails start) {
    setState(() {
      _previousOffset = _offset;
      _previousZoom = _zoom;
    });
  }

  void _handleScaleUpdate(ScaleUpdateDetails update) {
    setState(() {
      _zoom = _previousZoom * update.scale;
    });
  }

  void _handleScaleReset() {
    setState(() {
      _zoom = 1.0;
      _offset = Offset.zero;
      _position = Offset.zero;
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
                child: Stack(
                  children: [
                    Positioned(
                      left: _position.dx,
                      top: _position.dy,
                      child: Draggable(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          width: 350.0,
                          height: 450.0,
                          child: GestureDetector(
                            onScaleStart: _handleScaleStart,
                            onScaleUpdate: _handleScaleUpdate,
                            onDoubleTap: _handleScaleReset,
                            child: Transform(
                              transform: Matrix4.diagonal3(
                                  Vector3(_zoom, _zoom, _zoom)),
                              alignment: FractionalOffset.center,
                              child: Image.file(file),
                            ),
                          ),
                        ),
                        onDraggableCanceled: (velocity, offset) {
                          setState(() {
                            _position = offset;
                          });
                        },
                        feedback: Container(
                          width: 1.0,
                          height: 1.0,
                          child: Image.file(file),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DividedBar(),
              gridGallery,
            ],
          );
        },
      ),
    ));
  }
}
