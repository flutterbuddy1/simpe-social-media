import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_card/constants/constatns.dart';
import 'package:social_media_card/widgets/firend_item/friend_item.dart';
import 'package:social_media_card/widgets/user_list_item/user_list_item.dart';

class FriendsRequest extends StatefulWidget {
  const FriendsRequest({Key? key}) : super(key: key);

  @override
  _FriendsRequestState createState() => _FriendsRequestState();
}

class _FriendsRequestState extends State<FriendsRequest> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
          FriendItem(
            buttonColor: AppConstant.themeColor,
            buttonText: "Add Friend",
          ),
        ],
      ),
    );
  }
}
