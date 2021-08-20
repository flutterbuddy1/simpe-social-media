import 'package:flutter/material.dart';
import 'package:social_media_card/constants/constatns.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: InkWell(
        onTap: () {
          print("Hello");
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/user.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: AppConstant.themeColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "UserName",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
