import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class SubscribersPepoleList extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              20,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: _randomColor.randomColor(),
                        ),
                        Text("man")
                      ],
                    ),
                  )),
        ),
      ),
    );
  }
}
