import 'package:flutter/material.dart';
import 'package:social_media_card/widgets/app_bar/md_appbar.dart';

class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MdAppBar(title: "Comments"),
        preferredSize: Size.fromHeight(50),
      ),
      body: Center(
        child: Text("Under Construction"),
      ),
    );
  }
}
