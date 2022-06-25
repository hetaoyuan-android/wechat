import 'package:flutter/material.dart';
import 'package:wechat/utils/common.dart';

class FriendItem extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? groupTitle;
  final String? imageAssets;

  FriendItem({this.imageUrl, this.name, this.groupTitle, this.imageAssets});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10),
          height: groupTitle != null ? 30 : 0,
          color: GlobalThemeColor,
          child: groupTitle != null
              ? Text(
                  groupTitle!,
                  style: const TextStyle(color: Colors.grey),
                )
              : null,
        ),
        Container(
          color: Colors.white,
          height: 54,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(image: _getImage())),
              ),

              Container(
                  width: screenWidth(context) - 70,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 54,
                        child: Text(
                          name!,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 0.5,
                        color: GlobalThemeColor,
                      ), //下划线
                    ],
                  )), //昵称
            ],
          ),
        )
      ],
    );
  }

  ImageProvider _getImage() {
    if (imageUrl == null) {
      return AssetImage(imageAssets!);
    }
    return NetworkImage(imageUrl!);
  }
}
