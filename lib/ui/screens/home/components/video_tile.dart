import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class VideoTile extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(color: _randomColor.randomColor()),
        ),
        ListTile(
          title: Text("Mami boker tov - yaza lach"),
          subtitle: Text("Ben zini - Official Channel"),
          leading: CircleAvatar(backgroundColor: _randomColor.randomColor()),
        ),
      ],
    );
  }
}
