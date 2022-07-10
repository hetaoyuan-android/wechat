import 'package:flutter/material.dart';
import 'package:wechat/discovery/friend_item.dart';
import 'package:wechat/utils/common.dart';
import 'package:wechat/wechat/wechat_data.dart';

class CircleFriends extends StatefulWidget {
  const CircleFriends({Key? key}) : super(key: key);

  @override
  _CircleFriendsState createState() => _CircleFriendsState();
}

class _CircleFriendsState extends State<CircleFriends> {

  late final List<Wechat> listDatas = [];

  @override
  void initState() {
    listDatas.addAll(weChatDatas);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/friend_bg.png"),
              fit: BoxFit.cover,
            )),
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  width: 20,
                ),
                Image(
                  image: AssetImage("images/icon_right.png"),
                  width: 20,
                  height: 20,
                ),
                Spacer(),
                Icon(Icons.camera_alt_outlined),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight(context),
              child: ListView.builder(itemCount: listDatas.length, itemBuilder: _friendItem),
          )
        ],
      ),
    );
  }

  Widget _friendItem(BuildContext context, int index) {
    return FriendItem(
        imageUrl: listDatas[index].imageUrl, name: listDatas[index].name,
        content: listDatas[index].content, friendImageUrl: listDatas[index].imageUrl,);
  }
}
