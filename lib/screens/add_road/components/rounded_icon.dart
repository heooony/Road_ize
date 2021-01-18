import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:roadize/screens/add_road/custom_gallery.dart';
import 'package:roadize/size_config.dart';
import '../../../constants.dart';

class RoundedIcon extends StatefulWidget {
  @override
  _RoundedIconState createState() => _RoundedIconState();
}

class _RoundedIconState extends State<RoundedIcon> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: kSecondColor,
            child: Image.asset(
              'images/icons/camera.png',
              width: getProportionateScreenWidth(25.0),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20.0),
        ),
        GestureDetector(
          onTap: () async {
            var permitted = await PhotoManager.requestPermission();
            if (!permitted) return;

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CustomGallery()));
          },
          child: CircleAvatar(
            backgroundColor: kSecondColor,
            child: Image.asset(
              'images/icons/gallery.png',
              width: getProportionateScreenWidth(25.0),
            ),
          ),
        ),
      ],
    );
  }
}
