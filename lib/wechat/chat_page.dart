import 'package:flutter/material.dart';
import 'package:wechat/wechat/chat_item.dart';
import 'package:wechat/wechat/wechat_data.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPage createState() => _ChatPage();

}

class _ChatPage extends State<ChatPage> {

  late final List<Wechat> listDatas = [];

  @override
  void initState() {
    listDatas.addAll(weChatDatas);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("微信", style: TextStyle(color: Colors.black),),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: PopupMenuButton(
                color: const Color.fromRGBO(1, 1, 1, 0.8),
                offset: const Offset(0, 58),
                child: const Icon(Icons.add_circle_outline, size: 30,),
                itemBuilder: (BuildContext context) {
                  return <PopupMenuItem<String>>[
                    PopupMenuItem(
                        child: _popupMenuItem("images/发起群聊.png", "发起群聊")),
                    PopupMenuItem(
                        child: _popupMenuItem("images/添加朋友.png", "添加好友")),
                    PopupMenuItem(
                        child: _popupMenuItem("images/扫一扫1.png", "扫一扫")),
                    PopupMenuItem(
                        child: _popupMenuItem("images/收付款.png", "收付款")),
                  ];
                },
              ),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: listDatas.length,

            itemBuilder: _chatItem)
    );
  }

  Widget _chatItem(BuildContext context, int index) {
    return ChatItem(
        imageUrl: listDatas[index].imageUrl, name: listDatas[index].name,
        content: listDatas[index].content);
  }

  Widget _popupMenuItem(String imgAss, String title) {
    return Row(
      children: [
        Image(
          image: AssetImage(imgAss),
          width: 25,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        )
      ],
    );
  }

}


