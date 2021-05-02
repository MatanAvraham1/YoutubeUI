import 'package:flutter/material.dart';
import 'package:youtube/ui/screens/home/components/category_list.dart';
import 'package:youtube/ui/screens/home/components/video_tile.dart';
import 'package:youtube/ui/screens/subscriptions/components/subscribers_pepole_list.dart';

class SubscriptionsPage extends StatefulWidget {
  @override
  _SubscriptionsPageState createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 40,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: [
              SubscribersPepoleList(),
              Divider(
                height: 0,
              ),
            ],
          );
        } else if (index == 1) {
          return Column(
            children: [
              CategoryList(),
              Divider(
                height: 0,
              ),
            ],
          );
        }
        return VideoTile();
      },
    );
  }
}
