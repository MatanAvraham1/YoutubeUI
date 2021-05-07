import 'package:flutter/material.dart';
import 'package:youtube/constants/db.dart';

class SubscribersPepoleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
            users.length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage(users[index].profilePhotoUrl),
                      ),
                      Flexible(
                        child: Container(
                          width: 50,
                          child: Text(
                            users[index].username,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
