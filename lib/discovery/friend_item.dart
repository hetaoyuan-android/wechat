import 'package:flutter/material.dart';
import 'package:wechat/utils/common.dart';

class FriendItem extends StatefulWidget {
  final String? imageUrl;
  final String? name;
  final String? content;
  final String? friendImageUrl;

  const FriendItem(
      {Key? key, this.imageUrl, this.name, this.content, this.friendImageUrl})
      : super(key: key);

  @override
  _FriendItem createState() => _FriendItem();
}

class _FriendItem extends State<FriendItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      color: Colors.white,
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image:
                        DecorationImage(image: NetworkImage(widget.imageUrl!))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  SizedBox(
                    height: 40,
                    child: Text(
                      widget.name!,
                      style: const TextStyle(
                          fontSize: 18, color: Colors.lightBlue),
                    ),
                  ),
                  Text(
                    widget.content!,
                    style: const TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  const SizedBox(height: 10,),
                  Image.network(widget.friendImageUrl!),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
