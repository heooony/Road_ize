import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utilities/constants.dart';
import './components/home_sliver_appbar.dart';
import './components/home_list_1.dart';
import 'components/home_list_2.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeSliverAppBar(),
          SliverFillRemaining(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      HomeList1(),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      HomeList2(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
