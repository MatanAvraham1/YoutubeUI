import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:youtube/ui/screens/home/components/category_tile.dart';

class CategoryList extends StatelessWidget {
  final categories = nouns.take(20);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            20,
            (index) => CategoryTile(
              title: nouns[index],
            ),
          ),
        ),
      ),
    );
  }
}
