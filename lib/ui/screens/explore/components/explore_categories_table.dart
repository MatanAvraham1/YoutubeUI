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
                backgroundColors: [
                  Color(0xff761A25),
                  Color(0xff9D2A37),
                  Color(0xffC12F42)
                ],
                icon: Icons.fire_extinguisher,
              ),
              ExploreCategoryTableTile(
                category: "Music",
                backgroundColors: [
                  Color(0xff2EA79E),
                  Color(0xff27887F),
                  Color(0xff18635C)
                ],
                icon: Icons.music_note,
              ),
              ExploreCategoryTableTile(
                category: "Gaming",
                backgroundColors: [
                  Color(0xff805A51),
                  Color(0xffA07064),
                  Color(0xffC38674)
                ],
                icon: Icons.gamepad,
              ),
              ExploreCategoryTableTile(
                category: "News",
                backgroundColors: [
                  Color(0xff0C4379),
                  Color(0xff074B8A),
                  Color(0xff05519C)
                ],
                icon: Icons.new_releases_sharp,
              ),
              ExploreCategoryTableTile(
                category: "Sports",
                backgroundColors: [
                  Color(0xff015168),
                  Color(0xff007196),
                  Color(0xff0983A9),
                ],
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
