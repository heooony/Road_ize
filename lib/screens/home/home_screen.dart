import 'package:bottom_bar_line/bottom_bar_line_item.dart';
import 'package:bottom_bar_line/bottom_bar_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/user/user_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController;
  int currentPage;

  List<BottomBarLineItem> bottomListItem = [
    BottomBarLineItem(
      icon: Icon(
        Icons.home,
        color: kPrimaryColor,
      ),
      selectedColor: kSecondColor,
    ),
    BottomBarLineItem(
      icon: Icon(
        Icons.search,
        color: kPrimaryColor,
      ),
      selectedColor: kSecondColor,
    ),
    BottomBarLineItem(
      icon: Icon(
        Icons.rss_feed,
        color: kPrimaryColor,
      ),
      selectedColor: kSecondColor,
    ),
    BottomBarLineItem(
      icon: Icon(
        Icons.person_rounded,
        color: kPrimaryColor,
      ),
      selectedColor: kSecondColor,
    ),
  ];

  List<Widget> screen = [
    Container(
      constraints: BoxConstraints.expand(),
      color: Colors.red,
      child: Center(
        child: Text('PAGE 1'),
      ),
    ),
    Container(
      constraints: BoxConstraints.expand(),
      color: Colors.blue,
      child: Center(
        child: Text('PAGE 2'),
      ),
    ),
    Container(
      constraints: BoxConstraints.expand(),
      color: Colors.orange,
      child: Center(
        child: Text('PAGE 3'),
      ),
    ),
    UserScreen()
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    currentPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: screen,
        onPageChanged: (int index) {
          if (pageController.position.userScrollDirection !=
              ScrollDirection.idle)
            setState(() {
              currentPage = index;
            });
        },
      ),
      bottomNavigationBar: BottomBarLine(
        currentIndex: currentPage,
        onTap: (int index) {
          if (index != currentPage) {
            pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
            );
            setState(() {
              currentPage = index;
            });
          }
        },
        items: bottomListItem,
      ),
    );
  }
}
