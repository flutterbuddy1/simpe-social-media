import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:images_picker/images_picker.dart';
import 'package:social_media_card/constants/constatns.dart';
import 'package:social_media_card/screens/imagePicker.dart';
import 'package:social_media_card/widgets/app_bar/md_appbar.dart';
import 'package:social_media_card/widgets/slider_md/slider_md.dart';
import 'package:velocity_x/velocity_x.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  List<Media> res = <Media>[];
  bool filePicked = false;

  Future<void> getImage() async {
    List<Media>? listImages = await ImagesPicker.pick(
        count: 50,
        pickType: PickType.image,
        cropOpt: CropOption(cropType: CropType.rect));
    if (listImages != null) {
      setState(() {
        res = listImages;
        filePicked = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: MdAppBar(title: "Send Opinion Request"),
          preferredSize: Size.fromHeight(50),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                filePicked
                    ? SliderMd(imagesList: res)
                    : Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppConstant.themeColor,
                                width: 5,
                                style: BorderStyle.solid)),
                        child: Stack(
                          children: [
                            Center(
                              child: Icon(
                                Icons.image,
                                color: AppConstant.themeColor,
                                size: 30,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: FloatingActionButton(
                                onPressed: () {
                                  getImage();
                                },
                                child: Icon(Icons.add),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: RatingBar.builder(
                                minRating: 0,
                                itemCount: 1,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
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
                        ),
                      ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 3, color: AppConstant.themeColor)
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: VxTextField(
                    hint: "Type Your Question (Optional)",
                    borderColor: Colors.transparent,
                    icon: Icon(Icons.message),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 3, color: AppConstant.themeColor)
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: VxTextField(
                    hint: "Write Your Comments (Optional)",
                    borderColor: Colors.transparent,
                    icon: Icon(Icons.message),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: res.length > 0
                              ? AppConstant.themeColor
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                      child: "Send".text.size(20).white.make()),
                )
              ],
            ),
          ),
        ));
  }
}
