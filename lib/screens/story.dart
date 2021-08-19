import 'package:flutter/material.dart';
import 'package:sheeko/widgets/Custom_det.dart';

class Story extends StatelessWidget {
  final list;
  const Story({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${list[0]["title"]}",
          style: TextStyle(
              fontSize: 27, fontFamily: "Anton", fontWeight: FontWeight.normal),
        ),
        backgroundColor: Colors.pink[200],
        toolbarHeight: 150,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (c, i) {
              return Customdet(
                list: list[i],
              );
            }),
      ),
    );
  }
}
