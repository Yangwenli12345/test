import 'package:flutter/material.dart';

class Customappar extends StatelessWidget {
  const Customappar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Sheekoyin english",
        style: TextStyle(
            fontSize: 27, fontFamily: "Anton", fontWeight: FontWeight.normal),
      ),
      backgroundColor: Colors.red[300],
      toolbarHeight: 100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}

class Customappar2 extends StatelessWidget {
  const Customappar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "About devloper",
        style: TextStyle(
            fontSize: 27, fontFamily: "Anton", fontWeight: FontWeight.normal),
      ),
      backgroundColor: Colors.red[300],
      toolbarHeight: 100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
