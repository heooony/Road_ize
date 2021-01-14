import 'package:flutter/material.dart';
import 'package:roadize/screens/road/components/road_details.dart';
import 'package:roadize/screens/road/components/road_images.dart';
import '../../../size_config.dart';
import 'package:roadize/screens/place/place_screen.dart';

class RoadInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PlaceScreen()));
        },
        child: Column(
          children: [
            RoadImages(),
            SizedBox(
              height: 10.0,
            ),
            RoadDetails(),
            SizedBox(
              height: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
