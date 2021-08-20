import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:social_media_card/constants/constatns.dart';
import 'package:social_media_card/widgets/user_list_item/user_list_item.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({Key? key}) : super(key: key);

  @override
  _SocialCardState createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool showLiked = false;
  int index = 0;
  List<String> imagesList = [
    "assets/dress.jpg",
    "assets/dress.jpg",
    "assets/dress.jpg",
    "assets/dress.jpg",
    "assets/dress.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/user.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text("Mayank"),
                    Text(
                      "1 hour ago",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Some Text here By User",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: 450,
                        enableInfiniteScroll: false,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        onPageChanged: (int i, res) {
                          setState(() {
                            index = i;
                          });
                        }),
                    items: imagesList.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Stack(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration:
                                      BoxDecoration(color: Colors.amber),
                                  child: Container(
                                    child: Image.asset(
                                      i,
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Positioned(
                                right: 10,
                                child: IconButton(
                                    iconSize: 30,
                                    color: Colors.red,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                    )),
                              ),
                              Positioned(
                                  bottom: 10,
                                  left: 20,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Rs. 4000",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                              Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        showLiked = true;
                                      });
                                    },
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        size: 60,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        showLiked = true;
                                      });
                                    },
                                    child: Center(
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          "10",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              showLiked
                                  ? Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 450,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            showLiked = false;
                                          });
                                        },
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              UserListItem(),
                                              UserListItem(),
                                              UserListItem(),
                                              UserListItem(),
                                              UserListItem(),
                                              UserListItem(),
                                              UserListItem(),
                                              UserListItem(),
                                              UserListItem(),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox(),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: CarouselIndicator(
                color: Colors.blueGrey,
                activeColor: AppConstant.themeColor,
                count: imagesList.length,
                index: index,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              alignment: Alignment.centerRight,
              child: Text(
                "4 Comments",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void showLikedUserModal(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) => Container(
            child: new Container(
                padding: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      UserListItem(),
                      UserListItem(),
                      UserListItem(),
                      UserListItem(),
                      UserListItem(),
                      UserListItem(),
                      UserListItem(),
                      UserListItem(),
                      UserListItem(),
                    ],
                  ),
                )),
          ));
}
