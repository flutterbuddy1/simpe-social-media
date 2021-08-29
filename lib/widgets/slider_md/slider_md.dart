import 'dart:io';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:images_picker/images_picker.dart';
import 'package:social_media_card/constants/constatns.dart';

class SliderMd extends StatefulWidget {
  SliderMd({Key? key, required this.imagesList}) : super(key: key);
  List<Media> imagesList;

  @override
  _SliderMdState createState() => _SliderMdState();
}

class _SliderMdState extends State<SliderMd> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.6,
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                onPageChanged: (int i, res) {
                  setState(() {
                    index = i;
                  });
                }),
            items: widget.imagesList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Container(
                            child: Image.file(
                              File(i.path),
                              fit: BoxFit.contain,
                            ),
                          )),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: RatingBar.builder(
                          minRating: 0,
                          itemCount: 1,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      )
                    ],
                  );
                },
              );
            }).toList(),
          ),
          Container(
            alignment: Alignment.center,
            child: CarouselIndicator(
              color: Colors.blueGrey,
              activeColor: AppConstant.themeColor,
              count: widget.imagesList.length,
              index: index,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
