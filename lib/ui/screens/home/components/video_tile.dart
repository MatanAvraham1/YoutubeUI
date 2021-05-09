import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:youtube/models/video.dart';
import 'package:provider/provider.dart';

class VideoTile extends StatelessWidget {
  final Video video;

  const VideoTile({Key key, this.video}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final RandomColor _randomColor = RandomColor();

    if (video == null)
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

    return InkWell(
      onTap: () {
        Provider.of<ValueNotifier<Video>>(context, listen: false).value = video;
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(video.thumbnailUrl),
              ),
            ),
          ),
          ListTile(
            title: Text(
              video.title,
              style: TextStyle(fontSize: 14),
              // textAlign: TextAlign.right,
            ),
            subtitle: Text(
              video.owner.username,
              style: TextStyle(fontSize: 12),
              // textAlign: TextAlign.right,
            ),
            leading: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(video.owner.profilePhotoUrl),
            ),
          ),
        ],
      ),
    );
  }
}
