import 'dart:async';

import 'home.dart';
import 'package:flutter/material.dart';
import 'Myroutes.dart';

class startpage extends StatefulWidget {
  const startpage({Key? key}) : super(key: key);

  @override
  State<startpage> createState() => _startpageState();
}

class _startpageState extends State<startpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var dur = Duration(seconds: 4);
    return Timer(dur, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("images/start1.jpeg", fit: BoxFit.scaleDown),
          Text(
            "loading",
            style: TextStyle(color: Colors.pink.shade400),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          CircularProgressIndicator(
            backgroundColor: Colors.white,
            strokeWidth: 1,
          )
        ],
      ),
    );
  }
}
