import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheeko/model/service.dart';
import 'package:startapp/startapp.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  vdadd() async {
    await StartApp.showRewardedAd(onVideoCompleted: () {
      // video completed callback
    }, onReceiveAd: () {
      // ad received callback
    }, onFailedToReceiveAd: (String error) {
      // failed to received ad callback
    });
  }

  add() async {
    await StartApp.showInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Image.asset(
            "info/icons8-global-education-64.png",
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.share),
                      MaterialButton(
                        onPressed: () {
                          add();
                          Fluttertoast.showToast(
                              msg: "Goor dhow",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.blueGrey,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        },
                        child: Text("Share"),
                      ),
                    ],
                  )),
              Container(
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.star),
                      MaterialButton(
                        onPressed: () {
                          vdadd();
                          Fluttertoast.showToast(
                              msg: "Goor dhow",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.blueGrey,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        },
                        child: Text("Rate us"),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Connect us :",
            style: TextStyle(fontSize: 27),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  color: Colors.blue,
                  onPressed: () {
                    Service.luncherurl();
                  },
                  icon: Icon(
                    FontAwesomeIcons.twitter,
                    size: 30,
                  )),
              IconButton(
                  color: Colors.blue,
                  onPressed: () {
                    Service.luncherurlface();
                  },
                  icon: Icon(
                    FontAwesomeIcons.facebook,
                    size: 30,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
