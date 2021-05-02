import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:youtube/translations/locale_keys.g.dart';
import 'package:youtube/ui/screens/explore/components/explore_categories_table.dart';
import 'package:youtube/ui/screens/home/components/video_tile.dart';
import 'package:easy_localization/easy_localization.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
            50,
            (index) => index == 0
                ? Column(
                    children: [
                      ExploreCategoriesTable(),
                      Container(
                        height: 55,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              LocaleKeys.Trending_videos.tr(),
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                // fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : VideoTile()),
      ),
    );
  }
}
