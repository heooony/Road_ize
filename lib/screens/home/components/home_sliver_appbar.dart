import 'package:flutter/material.dart';
import 'package:chickpea/screens/home/components/sliver_space.dart';

class HomeSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      elevation: 0,
      floating: true,
      pinned: true,
      snap: false,
      toolbarHeight: kToolbarHeight,
      expandedHeight: size.height * 0.35,
      flexibleSpace: SliverSpace(),
      backgroundColor: Colors.white,
    );
  }
}
