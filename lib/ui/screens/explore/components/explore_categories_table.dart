import 'package:flutter/material.dart';
import 'package:youtube/ui/screens/explore/components/explore_category_table_tile.dart';

class ExploreCategoriesTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).primaryColor,
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Wrap(
            children: [
              ExploreCategoryTableTile(
                category: "Trending",
                colors: [Colors.red[400], Colors.red[600], Colors.red[900]],
                icon: Icons.fire_extinguisher,
              ),
              ExploreCategoryTableTile(
                category: "Music",
                colors: [
                  Colors.teal[400],
                  Colors.teal[700],
                  Colors.teal[900],
                ],
                icon: Icons.music_note,
              ),
              ExploreCategoryTableTile(
                category: "Gaming",
                colors: [
                  Colors.amber[600],
                  Colors.amber[700],
                  Colors.amber[900]
                ],
                icon: Icons.gamepad,
              ),
              ExploreCategoryTableTile(
                category: "News",
                colors: [
                  Colors.indigo[300],
                  Colors.indigo,
                  Colors.indigo[900],
                ],
                icon: Icons.new_releases_sharp,
              ),
              ExploreCategoryTableTile(
                category: "Sports",
                colors: [Colors.blue[400], Colors.blue, Colors.blue[900]],
                icon: Icons.sports,
              ),
            ],
          ),
        ),
        Divider(
          height: 0,
        ),
      ],
    );
  }
}
