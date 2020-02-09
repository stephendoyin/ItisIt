import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  int currentPageValue = 0;
  final controller = PageController(initialPage: 0);

  void getChangedPageAndMoveBar(int page) {
    setState(() {
      currentPageValue = page;
    });
  }

  Widget pageForIndex(BuildContext context, int index) {
    final screenSize = window.physicalSize; // MediaQuery.of(context).size;
    switch (index) {
      case 0:
        return Container(
          //  height: screenSize.height,
          //  width: screenSize.width,
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/images/onboard/bg_gradient_01.png'),
                  fit: BoxFit.cover,
                  width: screenSize.width,
                  height: screenSize.height),
              // Image.asset('assets/images/onboard/bg_gradient_01.png', width: screenSize.width, height: screenSize.height),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Image.asset(
                            'assets/images/onboard/ic_onboarding_send_receive.png',
                            width: 300.0,
                            height: 300.0),
                        Text(
                          "Send and receive payments to\nfriends and family quickly.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      case 1:
        return Container(
          //  height: screenSize.height,
          //  width: screenSize.width,
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/images/onboard/bg_gradient_02.png'),
                  fit: BoxFit.cover,
                  width: screenSize.width,
                  height: screenSize.height),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Image.asset(
                            'assets/images/onboard/ic_onboarding_pay.png',
                            width: 300.0,
                            height: 300.0),
                        Text(
                          "Quickly checkout at hundreds of\nmerchants throughout The Bahamas\nwith a single tap.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      case 2:
        return Container(
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/images/onboard/bg_gradient_03.png'),
                  fit: BoxFit.cover,
                  width: screenSize.width,
                  height: screenSize.height),
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Image.asset('assets/images/onboard/ic_onboarding_deals.png',
                        width: 300.0, height: 300.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 300,
                          child: Text(
                            "When you spend you save. Our merchants offer exclusive deals daily. Take advantage and save.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      case 3:
        return Container(
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/images/onboard/bg_gradient_04.png'),
                  fit: BoxFit.cover,
                  width: screenSize.width,
                  height: screenSize.height),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          width: 300.0,
                          height: 300.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Prosper",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "Out of the banks and in your hands.\nNo bank account or credit card required.\nLow to no transaction fees.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );

      default:
        return Image(
            image: AssetImage('assets/images/onboard/bg_gradient_02.png'),
            fit: BoxFit.cover);
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Color(0xff1DA9C7),
      Color(0xffADA9C7),
      Color(0xff2DA9C7),
      Color(0xff3DA9C7)
    ];
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            PageView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: 4,
                onPageChanged: (int page) {
                  getChangedPageAndMoveBar(page);
                },
                controller: controller,
                itemBuilder: (context, index) {
                  return pageForIndex(context, index);
                }),
            Positioned(
              bottom: 24,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < 4; i++)
                          if (i == currentPageValue) ...[
                            circleBar(true)
                          ] else ...[
                            circleBar(false)
                          ]
                      ],
                    )),
                    SizedBox(
                      height: 37,
                    ),
                    Container(
                      height: 60,
                      padding: EdgeInsets.only(left: 45, right: 45),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Get Started",
                            style: TextStyle(
                                color: Color(0xff1DA9C7), fontSize: 20),
                          ),
                          SizedBox(width: 34),
                          Image.asset(
                            'assets/images/general/ic_arrow_right.png',
                            width: 12,
                            height: 22,
                            color: colors[0],
                            fit: BoxFit.fitHeight,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const Color kOrange = Colors.white;
const Color klightGrey = Colors.lightBlue;
Widget circleBar(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8),
    height: isActive ? 12 : 8,
    width: isActive ? 12 : 8,
    decoration: BoxDecoration(
        color: isActive ? kOrange : Colors.transparent,
        border: Border.all(width: 1, color: kOrange),
        borderRadius: BorderRadius.all(Radius.circular(12))),
  );
}
