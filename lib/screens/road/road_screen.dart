import 'package:flutter/material.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/add_place/add_place_screen.dart';
import 'package:roadize/screens/add_place/custom_gallery.dart';
import 'package:roadize/size_config.dart';
import 'components/road_post.dart';
import 'components/road_profile.dart';

class RoadScreen extends StatefulWidget {
  RoadScreen({this.file, this.title});
  final file;
  final title;

  @override
  _RoadScreenState createState() => _RoadScreenState();
}

class _RoadScreenState extends State<RoadScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          splashColor: kSecondLightColor,
          child: Icon(
            Icons.add,
            color: kSecondColor,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CustomGallery()));
          },
        ),
        body: CustomScrollView(
          slivers: [
            RoadProfile(file: widget.file, title: widget.title),
            SliverToBoxAdapter(
              child: Scrollbar(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    RoadPost(),
                    RoadPost(),
                    RoadPost(),
                    RoadPost(),
                    RoadPost()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
