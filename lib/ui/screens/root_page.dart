import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube/constants/themes.dart';
import 'package:youtube/main.dart';
import 'package:youtube/translations/locale_keys.g.dart';
import 'package:youtube/ui/screens/explore/explore_page.dart';
import 'package:youtube/ui/screens/home/home_page.dart';
import 'package:youtube/ui/screens/library/library_page.dart';
import 'package:youtube/ui/screens/subscriptions/subscriptions_page.dart';
import 'package:easy_localization/easy_localization.dart';

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
  bool isLightMode;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isLightMode = isLightModeF(context);

    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              SwitchListTile(
                secondary: Icon(Icons.nightlight_round),
                title: Text("Dark Mode"),
                value: !isLightMode,
                onChanged: (value) {
                  if (isLightMode) {
                    MyApp.of(context).setTheme(ThemeMode.dark);
                  } else {
                    MyApp.of(context).setTheme(ThemeMode.light);
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  context.setLocale(Locale('en'));
                },
                child: Text("English"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.setLocale(Locale('he'));
                },
                child: Text("עברית"),
              ),
            ],
          ),
        ),
      ),
      body: pages.elementAt(_selectedIndex),
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
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.account_circle_outlined),
              onPressed: () {
                Scaffold.of(context).openDrawer();
                // Scaffold.of(context).openDrawer();
              },
            ),
          )
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
              LocaleKeys.Home.tr(),
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
              LocaleKeys.Explore.tr(),
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
              LocaleKeys.Subscriptions.tr(),
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
                LocaleKeys.Library.tr(),
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
                          LocaleKeys.Create.tr(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(LocaleKeys.Upload_a_video.tr()),
                      leading: Icon(Icons.upload_rounded),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(LocaleKeys.Go_Live.tr()),
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
