import 'package:flutter/material.dart';
import 'package:youtube/constants/db.dart';
import 'package:youtube/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class LibraryPage extends StatelessWidget {
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
                itemCount: videos.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(videos[index].thumbnailUrl),
                          ),
                        ),
                        width: 135,
                        height: 80,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 135,
                              child: Flexible(
                                child: Text(
                                  videos[index].title,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Container(
                              width: 135,
                              child: Flexible(
                                child: Text(
                                  videos[index].owner.username,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
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
