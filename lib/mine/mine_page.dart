import 'package:flutter/material.dart';
import 'package:wechat/utils/common.dart';
import 'package:wechat/widget/cell_item.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  _MinePage createState() => _MinePage();
}

class _MinePage extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            '我',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          color: GlobalThemeColor,
          child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                children: [
                  _headerWidget(),
                  Column(
                    children:  [
                      const SizedBox(
                        height: 10,
                      ),
                      const CellItem(
                        imageName: 'images/微信支付.png',
                        title: '支付',
                      ),
                      const SizedBox(height: 10,),
                      const CellItem(
                        imageName: 'images/微信收藏.png',
                        title: '收藏',
                      ),
                     Row(
                        children: [
                          Container(width: 50, height: 0.5, color: Colors.white),
                        ],
                      ),
                      const CellItem(
                        imageName: 'images/微信相册.png',
                        title: '相册',
                      ),
                      Row(
                        children: <Widget>[
                          Container(width: 50, height: 0.5, color: Colors.white),
                          Container(height: 0.5, color: Colors.grey)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(width: 50, height: 0.5, color: Colors.white),
                          Container(height: 0.5, color: Colors.grey)
                        ],
                      ),
                      const CellItem(
                        imageName: 'images/微信卡包.png',
                        title: '卡包',
                      ),
                      Row(
                        children: <Widget>[
                          Container(width: 50, height: 0.5, color: Colors.white),
                          Container(height: 0.5, color: Colors.grey)
                        ],
                      ),
                      const CellItem(
                        imageName: 'images/微信表情.png',
                        title: '表情',
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      const CellItem(
                        imageName: 'images/微信设置.png',
                        title: '设置',
                      ),
                    ],
                  )
                ],
              )),
        ));
  }

  Widget _headerWidget() {
    return Container(
      height: 110,
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage("images/avatar.jpeg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 120,
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 35,
                    child: Text(
                      "牵手约定",
                      style: TextStyle(fontSize: 24, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "微信号: vip1314",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Image(
                          image: AssetImage("images/icon_right.png"),
                          width: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
