import 'package:flutter/material.dart';
import '../../../constants.dart';

class ShortCard extends StatelessWidget {
  ShortCard({this.title, this.press, this.colours});
  final title;
  final List<Color> colours;
  final Function press;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(0.0),
              width: size.width * 0.3,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: colours,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 20.0,
                        color: kPrimaryLightColor.withOpacity(0.2))
                  ]),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width * 0.05),
                ),
              ),
            ),
            FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: press,
                child: Container(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                ))
          ],
        ),
        SizedBox(
          width: kDefaultPadding,
        )
      ],
    );
  }
}
