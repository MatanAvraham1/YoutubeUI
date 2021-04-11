import 'package:flutter/material.dart';

class ExploreCategoryTableTile extends StatelessWidget {
  final String category;
  final List<Color> colors;
  final IconData icon;

  const ExploreCategoryTableTile(
      {Key key, this.category, this.colors, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
        child: Container(
          width: MediaQuery.of(context).size.width / 2 - 6,
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              SizedBox(
                width: 3,
              ),
              Text(
                category,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: LinearGradient(
              colors: colors,
            ),
          ),
        ),
      ),
    );
  }
}
