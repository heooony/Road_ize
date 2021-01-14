import 'package:flutter/material.dart';
import 'package:roadize/size_config.dart';

class HashTagCard extends StatelessWidget {
  HashTagCard({this.icon});
  final icon;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: getProportionateScreenWidth(25.0),
      height: getProportionateScreenWidth(25.0),
      decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(10, 10),
                color: Colors.black.withOpacity(0.12),
                blurRadius: 10.0),
            BoxShadow(
                offset: Offset(-10, -10),
                color: Colors.white.withOpacity(0.2),
                blurRadius: 10.0)
          ]),
      child: Icon(
        icon,
        color: Colors.black.withOpacity(0.4),
        size: getProportionateScreenWidth(17.0),
      ),
    );
  }
}
