import 'package:chickpea/screens/plan/components/period_list.dart';
import 'package:chickpea/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class PlanSpace extends StatefulWidget {
  static int page;
  @override
  _PlanSpaceState createState() => _PlanSpaceState();
}

class _PlanSpaceState extends State<PlanSpace> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7,
      margin: EdgeInsets.only(
          top: size.height * 0.2,
          left: kDefaultPadding,
          right: kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
      child: Center(
          child: Text(
        PlanSpace.page.toString(),
        style: TextStyle(fontSize: 40.0),
      )),
    );
  }
}
