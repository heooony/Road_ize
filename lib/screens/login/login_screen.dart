import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final PageController pageController = PageController(
    initialPage: 0,
  );

  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kMainColor2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: kDefaultPadding * 6),
              height: size.height * 0.6,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    pageNumber = value;
                  });
                },
                controller: pageController,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  pageNumber = index;
                  return PageIntro(pageNumber: index);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Padding(
                    padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
                    child: CircleAvatar(
                      radius: 3.0,
                      backgroundColor:
                          pageNumber == i ? Colors.black : Colors.grey,
                    ),
                  )
              ],
            ),
            Container(
              height: size.height * 0.3,
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  TextField(
                    cursorColor: Colors.grey,
                    cursorHeight: 20.0,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(kDefaultPadding),
                      hintText: 'chickpea@mail.com',
                      filled: true,
                      fillColor: Color(0x44FFFFFF),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          borderSide: BorderSide.none),
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                  FlatButton(
                      color: kMainColor1,
                      height: 40.0,
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New User? '),
                InkWell(
                  onTap: () {
                    //if you tap this button,
                  },
                  child: Text(
                    'Create an account!',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PageIntro extends StatelessWidget {
  PageIntro({@required this.pageNumber});
  final pageNumber;

  List<String> images = [
    'images/intro1.svg',
    'images/intro2.svg',
    'images/intro3.svg'
  ];
  List<String> intro = [
    'Start your study now',
    'Communicate with people.',
    'Work together to achieve your goals.'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: SvgPicture.asset(
            images[pageNumber],
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Expanded(
          child: Text(
            intro[pageNumber],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ],
    );
  }
}
