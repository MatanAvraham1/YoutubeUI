import 'package:flutter/material.dart';
import 'package:youtube/constants/db.dart';
import 'package:youtube/ui/screens/home/components/category_list.dart';
import 'package:youtube/ui/screens/home/components/video_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videos.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: [
              CategoryList(),
            ],
          );
        }

        return VideoTile(
          video: videos[index - 1],
        );
      },
    );
  }
}
