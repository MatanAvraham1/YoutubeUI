import 'package:flutter/material.dart';

class ExploreCategoryTableTile extends StatelessWidget {
  final String category;
  final List<Color> backgroundColors;
  final IconData icon;

  const ExploreCategoryTableTile(
      {Key key, this.category, this.backgroundColors, this.icon})
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  category,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: backgroundColors,
            ),
          ),
        ),
      ),
    );
  }
}
