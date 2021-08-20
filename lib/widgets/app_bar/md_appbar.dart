import 'package:flutter/material.dart';
import 'package:social_media_card/app.dart';
import 'package:social_media_card/constants/constatns.dart';

class MdAppBar extends StatelessWidget {
  MdAppBar({Key? key, required this.title})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);
  String title;
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
      ),
      centerTitle: true,
      backgroundColor: AppConstant.themeColor,
    );
  }
}
