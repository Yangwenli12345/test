import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheeko/model/stories.dart';
import 'package:sheeko/screens/About.dart';
import 'package:sheeko/widgets/Custom_appar.dart';

import 'package:sheeko/widgets/Custom_story.dart';
import 'package:sheeko/widgets/custom_padd.dart';
import 'package:startapp/startapp.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [Padd(), About()];
  List<Widget> appapr = [Customappar(), Customappar2()];

  vdadd() async {
    await StartApp.showRewardedAd(onVideoCompleted: () {
      // video completed callback
    }, onReceiveAd: () {
      // ad received callback
    }, onFailedToReceiveAd: (String error) {
      // failed to received ad callback
    });
  }

  int x = 0;
  @override
  void initState() {
    vdadd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(12)),
          child: BottomNavigationBar(
            backgroundColor: Colors.pink[200],
            type: BottomNavigationBarType.fixed,
            onTap: (i) {
              setState(() {
                x = i;
              });
            },
            currentIndex: x,
            elevation: 20,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.infoCircle), label: "about us"),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sheekoyin english",
            style: TextStyle(
                fontSize: 27,
                fontFamily: "Anton",
                fontWeight: FontWeight.normal),
          ),
          backgroundColor: Colors.pink[200],
          toolbarHeight: 100,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        body: screens.elementAt(x));
  }
}
