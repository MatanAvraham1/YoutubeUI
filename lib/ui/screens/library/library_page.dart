import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:youtube/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class LibraryPage extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              LocaleKeys.Recent.tr(),
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            height: 120,
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        color: _randomColor.randomColor(),
                        width: 135,
                        height: 80,
                      ),
                      Column(
                        children: [
                          Text("juice wrld - super nany"),
                          Text("juice wrld")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(LocaleKeys.History.tr()),
            leading: Icon(Icons.history),
          ),
          ListTile(
            title: Text(LocaleKeys.Your_Videos.tr()),
            leading: Icon(Icons.video_collection_outlined),
          ),
          ListTile(
            title: Text(LocaleKeys.Your_Movies.tr()),
            leading: Icon(Icons.local_movies_outlined),
          ),
          ListTile(
            title: Text(LocaleKeys.Watch_later.tr()),
            leading: Icon(
              Icons.watch_later_outlined,
            ),
          ),
          Divider(),
          ListTile(
            title: Text(LocaleKeys.Playlists.tr()),
            trailing: Text(LocaleKeys.Recently_added.tr()),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
            title: Text(
              LocaleKeys.New_playlist.tr(),
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            title: Text(LocaleKeys.Liked_videos.tr()),
            leading: Icon(Icons.thumb_up_alt_outlined),
          ),
        ],
      ),
    );
  }
}
