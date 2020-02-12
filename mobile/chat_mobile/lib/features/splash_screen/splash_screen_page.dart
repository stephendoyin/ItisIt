import 'dart:async';
import 'dart:math';

import 'package:chat_mobile/core/routes/navigation.dart';
import 'package:chat_mobile/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  AnimationController
      _controller; // = AnimationController(duration: const Duration(milliseconds: 5000), vsync: this);

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 6), vsync: this);
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 10), (timer) {
      timer.cancel();
      pushToOnboardingPage(context);
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Color(0xff66328E), Color(0xffDE2055)])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset(
                "assets/images/general/ic_app.png",
                width: 281,
                height: 76,
              ),
              Text(
                "Powser to Prosper",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              RotationTransition(
                turns:
                    Tween<double>(begin: 0.0, end: 2 * pi).animate(_controller),
                child: Image.asset(
                  'assets/images/general/ic_loading.png',
                  width: 45.3,
                  height: 45.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
