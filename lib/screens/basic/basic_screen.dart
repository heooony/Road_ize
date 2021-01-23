import 'package:bottom_bar_line/bottom_bar_line_item.dart';
import 'package:bottom_bar_line/bottom_bar_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:roadize/constants.dart';
import 'package:roadize/screens/home/home_screen.dart';
import 'package:roadize/screens/search/search_screen.dart';
import 'package:roadize/screens/user/user_screen.dart';

class BasicScreen extends StatefulWidget {
  @override
  _BasicScreenState createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {
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
    HomeScreen(),
    SearchScreen(),
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
              curve: Curves.fastOutSlowIn,
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
