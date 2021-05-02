// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "Home": "Home",
  "Explore": "Explore",
  "Create": "Create",
  "Upload_a_video": "Upload a video",
  "Subscriptions": "Subscriptions",
  "Library": "Library",
  "Trending": "Trending",
  "Music": "Music",
  "Gaming": "Gaming",
  "News": "News",
  "Sports": "Sports",
  "Recent": "Recent",
  "History": "History",
  "Your_Videos": "Your Videos",
  "Your_Movies": "Your Movies",
  "Watch_later": "Watch later",
  "Playlists": "Playlists",
  "New_playlist": "New playlist",
  "Recently_added": "Recently_added",
  "Liked_videos": "Liked videos",
  "Trending_videos": "Trending videos",
  "Go_Live": "Go Live"
};
static const Map<String,dynamic> he = {
  "Home": "דף הבית",
  "Explore": "מה חדש",
  "Create": "יצירה",
  "Upload_a_video": "העלאת סרטון",
  "Subscriptions": "מינויים",
  "Library": "ספרייה",
  "Trending": "סרטונים חמים",
  "Music": "מוזיקה",
  "Gaming": "משחקים",
  "News": "חדשות",
  "Sports": "ספורט",
  "Recent": "לאחרונה",
  "History": "היסטוריה",
  "Your_Videos": "הסרטונים שלך",
  "Your_Movies": "הסרטים שלך",
  "Watch_later": "לצפייה במועד מאוחר יותר",
  "Playlists": "פלייליסטים",
  "New_playlist": "פלייליסט חדש",
  "Recently_added": "נוסף לאחרונה",
  "Liked_videos": "סרטונים שסומנו בלייק",
  "Trending_videos": "סרטונים חמים",
  "Go_Live": "התחלת סטרימינג בשידור חי"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "he": he};
}
