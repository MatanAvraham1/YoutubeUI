import 'package:flutter/material.dart';
import 'package:youtube/ui/screens/root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode {
    return _themeMode;
  }

  void setTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RootPage(),
      themeMode: _themeMode,
      theme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
      ),
    );
  }
}
