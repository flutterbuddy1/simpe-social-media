import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_card/widgets/firend_item/friend_item.dart';
import 'package:social_media_card/widgets/user_list_item/user_list_item.dart';

class AllFirends extends StatefulWidget {
  const AllFirends({Key? key}) : super(key: key);

  @override
  _AllFirendsState createState() => _AllFirendsState();
}

class _AllFirendsState extends State<AllFirends> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FriendItem(
            buttonColor: Colors.red,
            buttonText: "Cancel",
          ),
          FriendItem(
            buttonColor: Colors.red,
            buttonText: "Cancel",
          ),
          FriendItem(
            buttonColor: Colors.red,
            buttonText: "Cancel",
          ),
          FriendItem(
            buttonColor: Colors.red,
            buttonText: "Cancel",
          ),
          FriendItem(
            buttonColor: Colors.red,
            buttonText: "Cancel",
          ),
          FriendItem(
            buttonColor: Colors.red,
            buttonText: "Cancel",
          ),
          FriendItem(
            buttonColor: Colors.red,
            buttonText: "Cancel",
          ),
          FriendItem(
            buttonColor: Colors.red,
            buttonText: "Cancel",
          ),
          FriendItem(
            buttonColor: Colors.red,
            buttonText: "Cancel",
          ),
        ],
      ),
    );
  }
}
