import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_card/app.dart';
import 'package:social_media_card/constants/constatns.dart';
import 'package:social_media_card/screens/profile.dart';

class MdAppBar extends StatelessWidget {
  MdAppBar({Key? key, required this.title})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);
  String title;
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
      ),
      centerTitle: true,
      backgroundColor: AppConstant.themeColor,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => ProfileScreen()));
            },
            icon: Icon(Icons.person))
      ],
    );
  }
}
