import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KanooPickupSplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _KanooPickupSplashScreenState();
}

class _KanooPickupSplashScreenState extends State<KanooPickupSplashScreen> {
  double _progressValue;

  @override
  void initState() {
    super.initState();
    _progressValue = 0.0;
    _updateProgress();
  }

  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.05;
        // we "finish" downloading here
        if (_progressValue == 1) {
          t.cancel();
          return;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: 40,
          padding: EdgeInsets.all(8),
          child: LinearProgressIndicator(
            backgroundColor: Colors.red,
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.amber,
            ),
            value: _progressValue,
          ),
        ),
      ),
    );
  }
}
