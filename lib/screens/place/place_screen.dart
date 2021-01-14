import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/size_config.dart';
import 'components/place_image.dart';
import 'components/place_information.dart';
import 'components/place_title.dart';

class PlaceScreen extends StatefulWidget {
  @override
  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          PlaceImage(),
          PlaceTitle(),
          PlaceInformation(),
        ],
      )),
    );
  }
}
