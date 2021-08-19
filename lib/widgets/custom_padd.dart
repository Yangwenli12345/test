import 'package:flutter/material.dart';
import 'package:sheeko/model/stories.dart';
import 'package:sheeko/widgets/Custom_story.dart';
import 'package:startapp/startapp.dart';

class Padd extends StatelessWidget {
  const Padd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Customstory(
            list: ardaydawanagsan,
          ),
          AdBanner()
        ],
      ),
    );
  }
}
