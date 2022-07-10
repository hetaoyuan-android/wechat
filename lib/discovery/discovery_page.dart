import 'package:flutter/material.dart';
import 'package:wechat/discovery/circle_friends.dart';
import 'package:wechat/utils/common.dart';
import 'package:wechat/widget/cell_item.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  _DiscoveryPage createState() => _DiscoveryPage();
}

class _DiscoveryPage extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '发现',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0, //导航栏底部边栏，这样设置就没有底部的黑线了
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_sharp,
              size: 30,
            ),
            onPressed: () {
              print('search');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline,
              size: 30,
            ),
            onPressed: () {
              print('add');
            },
          ),
        ],
      ),
      body: Container(
        color: GlobalThemeColor,
        child: ListView(
          children: <Widget>[
            //朋友圈
            const CellItem(
              imageName: 'images/朋友圈.png',
              title: '朋友圈',
              subBigImageName: "images/avatar.jpeg",
            ),

            //间隔
            const SizedBox(
              height: 10,
            ),
            //扫一扫
            const CellItem(
              imageName: 'images/扫一扫2.png',
              title: '扫一扫',
            ),
            //分割线
            Row(
              children: <Widget>[
                Container(width: 50, height: 0.5, color: Colors.white),
                Container(height: 0.5, color: Colors.grey)
              ],
            ),
            //摇一摇
            const CellItem(
              imageName: 'images/摇一摇.png',
              title: '摇一摇',
            ),
            const SizedBox(
              height: 10,
            ),
            //看一看
            const CellItem(
              imageName: 'images/看一看icon.png',
              title: '看一看',
            ),
            Row(
              children: <Widget>[
                Container(width: 50, height: 0.5, color: Colors.white),
                Container(height: 0.5, color: Colors.grey)
              ],
            ),
            //搜一搜
            const CellItem(
              imageName: 'images/搜一搜 2.png',
              title: '搜一搜',
            ),
            const SizedBox(
              height: 10,
            ),
            //附近的人
            const CellItem(
              imageName: 'images/附近的人icon.png',
              title: '附近的人',
            ),
            const SizedBox(
              height: 10,
            ),
            //购物
            const CellItem(
              imageName: 'images/购物.png',
              title: '购物',
              subTitle: '618限时特价',
              subImageName: 'images/badge.png',
            ),
            Row(
              children: <Widget>[
                Container(width: 50, height: 0.5, color: Colors.white),
                Container(height: 0.5, color: Colors.grey)
              ],
            ),
            //游戏
            const CellItem(
              imageName: 'images/游戏.png',
              title: '游戏',
            ),
            const SizedBox(
              height: 10,
            ),
            //小程序
            const CellItem(
              imageName: 'images/小程序.png',
              title: '小程序',
            ),
          ],
        ),
      ),
    );
  }
}
