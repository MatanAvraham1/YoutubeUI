import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class VideoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: RandomColor().randomColor(),
        ),
        ListTile(
          title: Text("Actor - Ben zini Officail Clip"),
          subtitle: Text("Ben-Xini officail 2.3M 1 week ago"),
          leading: CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ),
      ],
    );
  }
}
