import 'package:chickpea/screens/plan/components/period_list.dart';
import 'package:chickpea/screens/plan/components/plan_space.dart';
import 'package:chickpea/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlanScreen extends StatefulWidget {
  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor3,
      ),
      backgroundColor: kMainColor3,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.07),
            child: Icon(
              Icons.arrow_drop_up_sharp,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.08),
            child: Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          PeriodList(),
          PlanSpace(),
        ],
      ),
    ));
  }
}
