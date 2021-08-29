import 'package:flutter/material.dart';
import 'package:social_media_card/widgets/app_bar/md_appbar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MdAppBar(title: "Search"),
        preferredSize: Size.fromHeight(50),
      ),
      body: Center(
        child: Text("Under Construction"),
      ),
    );
  }
}
