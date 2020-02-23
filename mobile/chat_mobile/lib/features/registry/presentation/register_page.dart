import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_mobile/r.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _controller;
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Image.asset(
              R.onboard.icOnboardingPay,
              width: 300,
              height: 150,
            ),
            Text("User ID"),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Container(
                  width: 150,
                  child: TextField(
                    controller: _controller,
                  )),
              Container(
                child: CupertinoButton(
                  child: Icon(Icons.skip_next),
                ),
              )
            ]),
            Text("Enter your login Id")
          ])),
    );
  }
}
