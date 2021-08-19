import 'dart:async';
import 'package:flutter/material.dart';
import 'package:startapp/startapp.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  add() async {
    await StartApp.showInterstitialAd();
  }

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("Home");
    });
    add();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 190),
        child: Column(
          children: [
            Center(
              child: Image.asset("info/splashicon.png"),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "English stories",
              style: TextStyle(fontSize: 36, fontFamily: "Anton"),
            ),
            SizedBox(
              height: 260,
            ),
            CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2,
            )
          ],
        ),
      ),
    );
  }
}
