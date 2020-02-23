import 'dart:async';
import 'package:chat_mobile/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'kanoo_pickup_splash_screen.dart';
import 'kanoo_splash_screen.dart';

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
    // Timer.periodic(Duration(seconds: 10), (timer) {
    //   timer.cancel();
    //   pushToOnboardingPage(context);
    // });
    return Scaffold(body: KanooPickupSplashScreen());
  }
}
