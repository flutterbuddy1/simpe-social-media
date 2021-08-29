import 'package:flutter/material.dart';
import 'package:social_media_card/constants/constatns.dart';
import 'package:social_media_card/screens/home.dart';
import 'package:social_media_card/screens/pages/all_firends.dart';
import 'package:social_media_card/screens/pages/firends_request.dart';
import 'package:social_media_card/widgets/app_bar/md_appbar.dart';

class FriendScreen extends StatefulWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  _FriendScreenState createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  final pageViewController = PageController();
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: MdAppBar(title: "Friends"),
          preferredSize: Size.fromHeight(50),
        ),
        body: Column(
          children: [
            Container(
              color: AppConstant.themeColor,
              child: Row(
                children: [
                  FlatButton(
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width / 2,
                      onPressed: () {
                        pageViewController.jumpToPage(0);
                      },
                      color: _pageIndex == 0
                          ? Colors.orange
                          : AppConstant.themeColor,
                      textColor: Colors.white,
                      child: Text("Friends Requests")),
                  FlatButton(
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width / 2,
                      onPressed: () {
                        pageViewController.jumpToPage(1);
                      },
                      color: _pageIndex == 1
                          ? Colors.orange
                          : AppConstant.themeColor,
                      textColor: Colors.white,
                      child: Text("My Friends")),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: pageViewController,
                children: [
                  FriendsRequest(),
                  AllFirends(),
                ],
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
              ),
            )
          ],
        ));
  }
}
