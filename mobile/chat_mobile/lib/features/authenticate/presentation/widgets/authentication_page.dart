import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final List<Widget> introWidgetsList = [
    Container(child: Stack(children: <Widget>[
      // Text("data"),Text("data"),Text("data"),Text("data")
      // Container(
      //   child: Image(image: AssetImage('assets/images/onboard/bg_gradient_01.png'),),
      // ),
      //       Container(
      //   child: Image(image: AssetImage('assets/images/onboard/bg_gradient_01.png'),),
      // ),

      Image(image: AssetImage('assets/images/onboard/bg_gradient_01.png'),),
      Image(image: AssetImage('assets/images/onboard/bg_gradient_02.png'),),
      Image(image: AssetImage('assets/images/onboard/bg_gradient_03.png'),),
      Image(image: AssetImage('assets/images/onboard/bg_gradient_04.png'),)

    ],),)
  ];

  int currentPageValue = 0;
  final controller = PageController(initialPage: 0);

void getChangedPageAndMoveBar(int page) {
  currentPageValue = page;
  setState(() {});
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              // PageView.builder(physics: ClampingScrollPhysics(),
              // itemCount: introWidgetsList.length,
              // onPageChanged: (int page) {
              //   getChangedPageAndMoveBar(page);
              // },
              // controller: controller,
              // itemBuilder: (context, index) {
              //   return introWidgetsList[index];
              // }
              // ),
              PageView(
                physics: ClampingScrollPhysics(),
                controller: controller,
                onPageChanged: (int page) {
                  setState(() {
                    currentPageValue = page;
                  });
                },
                children: introWidgetsList,
              ),
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: <Widget>[
                  Container(child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < introWidgetsList.length; i++) 
                        if (i == currentPageValue) ...[circleBar(true)] else ...[circleBar(false)]
                      
                    ],
                  ))
              ],),
              Visibility(child: Align(
                child: Container(child: FloatingActionButton(child: Icon(Icons.ac_unit),
                onPressed: () {

                },)),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// class PageView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return null;
//   }
// }

const Color kOrange = Colors.orange;
const Color klightGrey = Colors.lightBlue;
Widget circleBar(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8),
    height: isActive ? 12 : 8,
    width: isActive ? 12 : 8,
    decoration: BoxDecoration(
        color: isActive ? kOrange : klightGrey,
        borderRadius: BorderRadius.all(Radius.circular(12))),
  );
}