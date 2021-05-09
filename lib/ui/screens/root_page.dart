import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:provider/provider.dart';
import 'package:youtube/constants/themes.dart';
import 'package:youtube/main.dart';
import 'package:youtube/models/video.dart';
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

  Widget _buildMiniPlayer() => Consumer<ValueNotifier<Video>>(
        builder: (_, video, __) {
          if (video.value == null) return SizedBox();
          return Miniplayer(
            onDismissed: () {
              video.value = null;
            },
            minHeight: 60,
            maxHeight: MediaQuery.of(context).size.height,
            builder: (height, percentage) {
              if (percentage > 0.2)
                return Image.network(video.value.thumbnailUrl);
              else
                return Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        // flex: 3,
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: 5,
                          child: Image.network(
                            video.value.thumbnailUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                video.value.title,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                video.value.owner.username,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.play_arrow,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.close,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                );
            },
          );
        },
      );

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
      body: Stack(
        children: [
          pages.elementAt(_selectedIndex),
          _buildMiniPlayer(),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
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
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: Theme.of(context).iconTheme.color,
        unselectedItemColor: Theme.of(context).iconTheme.color,
        items: [
          BottomNavigationBarItem(
            label: LocaleKeys.Home.tr(),
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: LocaleKeys.Explore.tr(),
            icon: Icon(
              Icons.explore_outlined,
            ),
            activeIcon: Icon(
              Icons.explore,
            ),
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(Icons.add_circle_outline_outlined),
            activeIcon: Icon(
              Icons.add_circle,
            ),
          ),
          BottomNavigationBarItem(
            label: LocaleKeys.Subscriptions.tr(),
            icon: Icon(
              Icons.subscriptions_outlined,
            ),
            activeIcon: Icon(
              Icons.subscriptions,
            ),
          ),
          BottomNavigationBarItem(
              label: LocaleKeys.Library.tr(),
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
