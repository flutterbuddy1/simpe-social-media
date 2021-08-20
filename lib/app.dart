import 'package:flutter/material.dart';
import 'package:social_media_card/widgets/bottom_nav_bar/bottom_navbar_md.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBarWithMD(),
    );
  }
}
