import 'dart:async';

import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer()
  {
    Timer(const Duration(seconds: 3), () async {
      //send user to home screen
      Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreen()));
    });
  }
  @override
  void initState() {
    super.initState();

    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset(name)
        ],
        ),
      ),
    );
  }
}
