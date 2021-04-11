import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube/main.dart';
import 'package:youtube/ui/screens/explore/explore_page.dart';
import 'package:youtube/ui/screens/home/home_page.dart';
import 'package:youtube/ui/screens/library/library_page.dart';
import 'package:youtube/ui/screens/subscriptions/subscriptions_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;

  final pages = [
    HomePage(),
    ExplorePage(),
    null,
    SubscriptionsPage(),
    LibraryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final isLightMode = MyApp.of(context).themeMode == ThemeMode.light;

    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        child:
            Icon(isLightMode ? Icons.nightlight_round : Icons.wb_sunny_rounded),
        onPressed: () {
          if (isLightMode) {
            MyApp.of(context).setTheme(ThemeMode.dark);
          } else {
            MyApp.of(context).setTheme(ThemeMode.light);
          }
        },
      ),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 9),
          child: SvgPicture.asset(
            isLightMode
                ? "assets/icons/youtube_icon_light.svg"
                : "assets/icons/youtube_icon_dark.svg",
          ),
        ),
        leadingWidth: 105,
        actions: [
          IconButton(icon: Icon(Icons.connected_tv), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.notifications_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search_outlined), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.account_circle_outlined), onPressed: () {})
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        selectedIconTheme: Theme.of(context).iconTheme,
        unselectedIconTheme: Theme.of(context).iconTheme,
        items: [
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text(
              "Home",
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text(
              "Explore",
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
            icon: Icon(
              Icons.explore_outlined,
            ),
            activeIcon: Icon(
              Icons.explore,
            ),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text(
              "Add",
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
            icon: Icon(Icons.add_circle_outline_outlined),
            activeIcon: Icon(
              Icons.add_circle,
            ),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text(
              "Subscriptions",
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
            icon: Icon(
              Icons.subscriptions_outlined,
            ),
            activeIcon: Icon(
              Icons.subscriptions,
            ),
          ),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                "Library",
                style: TextStyle(color: Theme.of(context).iconTheme.color),
              ),
              icon: Icon(
                Icons.video_library_outlined,
              ),
              activeIcon: Icon(
                Icons.video_library,
              )),
        ],
        onTap: (value) {
          if (value == 2) {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              context: context,
              builder: (context) => Container(
                height: 190,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, bottom: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Create",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Upload a video"),
                      leading: Icon(Icons.upload_rounded),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Go Live"),
                      leading: Icon(Icons.radio_button_checked_sharp),
                    ),
                  ],
                ),
              ),
            );
          } else {
            setState(() {
              _selectedIndex = value;
            });
          }
        },
      ),
    );
  }
}
