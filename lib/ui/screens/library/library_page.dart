import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

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
              "Recent",
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
            title: Text("History"),
            leading: Icon(Icons.history),
          ),
          ListTile(
            title: Text("Your Videos"),
            leading: Icon(Icons.video_collection_outlined),
          ),
          ListTile(
            title: Text("Your Movies"),
            leading: Icon(Icons.local_movies_outlined),
          ),
          ListTile(
            title: Text("Watch later"),
            leading: Icon(
              Icons.watch_later_outlined,
            ),
          ),
          Divider(),
          ListTile(
            title: Text("Playlists"),
            trailing: Text("Recently added"),
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
              "New playlist",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            title: Text("Liked videos"),
            leading: Icon(Icons.thumb_up_alt_outlined),
          ),
        ],
      ),
    );
  }
}
