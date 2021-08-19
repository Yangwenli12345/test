import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Service {
  static luncherurl() async {
    if (await canLaunch("https://twitter.com/Yangwenli661")) {
      await launch("https://twitter.com/Yangwenli661");
    } else {
      Fluttertoast.showToast(
          msg: "Cant lunch this url",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.pink[200],
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  static luncherurlface() async {
    if (await canLaunch(
        "https://www.facebook.com/profile.php?id=100043631141359")) {
      await launch("https://www.facebook.com/profile.php?id=100043631141359",
          enableDomStorage: true);
    } else {
      Fluttertoast.showToast(
          msg: "Cant lunch this url",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.pink[200],
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
