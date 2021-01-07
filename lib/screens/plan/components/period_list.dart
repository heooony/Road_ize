import 'package:chickpea/screens/plan/components/plan_space.dart';
import 'package:flutter/material.dart';
import 'package:chickpea/utilities/constants.dart';
import 'package:intl/intl.dart';

class PeriodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var annual = DateFormat('yyyy').format(now);
    var monthly = DateFormat('MM').format(now);
    var daily = DateFormat('dd').format(now);
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.3,
        padding: EdgeInsets.only(bottom: size.height * 0.1),
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        color: kMainColor3,
        child: ListWheelScrollView(
          itemExtent: size.height * 0.12,
          overAndUnderCenterOpacity: 0.5,
          onSelectedItemChanged: (value) {
            PlanSpace.page = value;
          },
          physics: FixedExtentScrollPhysics(),
          children: [
            SelectPeriodList(
              title: 'Daily',
              subtitle: '일간 계획표',
              initial: 'D',
              color: kSubColor4,
              period: '$daily일',
            ),
            SelectPeriodList(
              title: 'Weekly',
              subtitle: '주간 계획표',
              initial: 'W',
              color: kSubColor3,
              period: '$monthly주',
            ),
            SelectPeriodList(
              title: 'Monthly',
              subtitle: '월간 계획표',
              initial: 'M',
              color: kSubColor2,
              period: '$monthly월',
            ),
            SelectPeriodList(
              title: 'Annual',
              subtitle: '연간 계획표',
              initial: 'Y',
              color: kSubColor1,
              period: '$annual년',
            ),
          ],
        ));
  }
}

class SelectPeriodList extends StatelessWidget {
  SelectPeriodList(
      {@required this.title,
      @required this.subtitle,
      @required this.initial,
      @required this.color,
      @required this.period});

  final title;
  final subtitle;
  final initial;
  final color;
  final period;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: color.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                    offset: Offset(10, 10),
                    blurRadius: 20.0,
                    color: Colors.white.withOpacity(0.2))
              ]),
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            leading: Container(
              width: size.width * 0.08,
              height: size.width * 0.08,
              child: Text(
                initial,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black.withOpacity(0.6), width: 1.5),
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            trailing: Text(
              period,
              style: TextStyle(fontSize: size.width * 0.06),
            ),
          ),
        ),
      ],
    );
  }
}
