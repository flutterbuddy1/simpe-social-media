import 'package:flutter/material.dart';
import 'package:social_media_card/constants/constatns.dart';

class FriendItem extends StatelessWidget {
  FriendItem({Key? key, required this.buttonText, required this.buttonColor})
      : super(key: key);
  String buttonText;
  Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                    child: Text(
                      "UserName",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              FlatButton(
                  textColor: buttonColor,
                  onPressed: () {},
                  child: Text(buttonText)),
            ],
          ),
        ),
      ),
    );
  }
}
