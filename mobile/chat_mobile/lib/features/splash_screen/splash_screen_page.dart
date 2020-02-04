import 'dart:async';

import 'package:chat_mobile/core/routes/navigation.dart';
import 'package:chat_mobile/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 5), (timer) {
      timer.cancel();
      pushAuthenticationPage(context);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            "Loading",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
