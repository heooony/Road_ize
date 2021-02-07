import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:roadize/screens/road/road_screen.dart';
import 'package:roadize/size_config.dart';
import '../../../constants.dart';
import '../../../firebase.dart';

class RoadDisplayRack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return StreamBuilder<QuerySnapshot>(
        stream: MyFirebase.store.collection('map').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.lightBlueAccent,
              ),
            );
          }
          final mapInformation = snapshot.data.docs;
          List<DisplayCard> displayCards = [];
          for (var information in mapInformation) {
            final title = information.data()['title'];
            final downloadURL = information.data()['downloadURL'];
            final displayCard = DisplayCard(
              title: title,
              image: downloadURL,
              roadCount: 0,
            );
            displayCards.add(displayCard);
          }
          return GridView.builder(
            itemCount: displayCards.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return displayCards[index];
            },
          );
        });
  }
}

class DisplayCard extends StatelessWidget {
  DisplayCard({this.title, this.image, this.roadCount});
  final title;
  final image;
  final roadCount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => RoadScreen(file: image, title: title)));
      },
      child: Container(
        width: SizeConfig.screenWidth * 0.4,
        height: SizeConfig.screenWidth * 0.4,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover)),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(10.0),
                    right: getProportionateScreenWidth(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        title,
                        style: TextStyle(fontSize: SizeConfig.fontSize * 0.6),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: kPrimaryColor,
                            size: SizeConfig.fontSize * 0.7,
                          ),
                          Text(
                            '$roadCount road',
                            style:
                                TextStyle(fontSize: SizeConfig.fontSize * 0.6),
                          )
                        ],
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
