import 'package:flutter/material.dart';
import 'package:sheeko/screens/story.dart';

class Customstory extends StatelessWidget {
  final list;
  const Customstory({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (c) {
          return Story(
            list: list,
          );
        }));
      },
      child: Container(
        height: 70,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
          child: ListTile(
            leading: Image.asset("info/iconed.png"),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 35,
              color: Colors.red,
            ),
            title: Text(
              "${list[0]["title"]}",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
