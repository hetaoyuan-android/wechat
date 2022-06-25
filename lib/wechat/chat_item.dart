
import 'package:flutter/material.dart';
import 'package:wechat/utils/common.dart';

class ChatItem extends StatefulWidget {

  final String? imageUrl;
  final String? name;
  final String? content;

  ChatItem({this.imageUrl, this.name, this.content});
  @override
  _ChatItem createState() => _ChatItem();

}

class _ChatItem extends State<ChatItem> {

  DateTime dateTime= DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(12),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(image: NetworkImage(widget.imageUrl!))),
              ),

              Container(
                  width: screenWidth(context) - 140,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 36,
                        child: Text(
                          widget.name!,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.content!, style: const TextStyle(fontSize: 14, color: Colors.grey),)
                      ),
                      SizedBox(height: 8,),
                      Container(
                        height: 0.5,
                        color: GlobalThemeColor,
                      ),
                    ],
                  )),

              Container(
                alignment: Alignment.center,
                height: 54,
                child: Text("20: 10", style: TextStyle(fontSize: 14, color: Colors.grey),),
              )
            ],
          ),
        )
      ],
    );
  }
}