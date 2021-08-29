import 'dart:io';

import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:social_media_card/constants/constatns.dart';
import 'package:social_media_card/widgets/app_bar/md_appbar.dart';

class ImagePickerList extends StatefulWidget {
  const ImagePickerList({Key? key}) : super(key: key);

  @override
  _ImagePickerListState createState() => _ImagePickerListState();
}

class _ImagePickerListState extends State<ImagePickerList> {
  List<Asset> images = <Asset>[];
  List<Media> res = <Media>[];
  String _error = 'No Error Dectected';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // loadAssets();
    getImage();
  }

  Future<void> getImage() async {
    List<Media>? listImages = await ImagesPicker.pick(
        count: 3,
        pickType: PickType.image,
        cropOpt: CropOption(cropType: CropType.rect));
    setState(() {
      res = listImages!;
    });
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(
          takePhotoIcon: "chat",
          doneButtonTitle: "Fatto",
        ),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MdAppBar(title: "Upload Image"),
        preferredSize: Size.fromHeight(50),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(res.length, (index) {
          print(res[index].path);
          return res[index].thumbPath != null
              ? Container(
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: AppConstant.themeColor,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: Image.file(
                    File(res[index].path),
                    fit: BoxFit.cover,
                  ),
                )
              : Text("No File Picked");
        }),
      ),
    );
  }
}
