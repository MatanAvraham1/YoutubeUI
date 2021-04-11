import 'package:flutter/material.dart';
import 'package:youtube/main.dart';

class CategoryTile extends StatefulWidget {
  final String title;

  const CategoryTile({Key key, this.title}) : super(key: key);

  @override
  _CategoryTileState createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  @override
  Widget build(BuildContext context) {
    final isLightMode = MyApp.of(context).themeMode == ThemeMode.light;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: TextButton(
        onPressed: () {},
        child: Text(
          widget.title,
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
        style: TextButton.styleFrom(
            backgroundColor: isLightMode ? Colors.grey[300] : Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )),
      ),
    );
  }
}
