
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPage createState() => _ChatPage();

}

class _ChatPage extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:Center(
        child: Text('微信页面'),
      ),
    );
  }
}