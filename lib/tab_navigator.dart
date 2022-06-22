import 'package:flutter/material.dart';
import 'package:wechat/contacts/contacts_page.dart';

import 'discovery/discovery_page.dart';
import 'mine/mine_page.dart';
import 'wechat/chat_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.green;
  int _currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          ChatPage(),
          ContactsPage(),
          DiscoveryPage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tab_bar_chat.png',
                height: 30,
                width: 30,
              ),
              activeIcon: Image.asset(
                'images/tab_bar_chat_hl.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                '微信',
                style: TextStyle(
                    fontSize: 16,
                    color: _currentIndex != 0 ? _defaultColor : _activeColor),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tab_bar_friends.png',
                height: 30,
                width: 30,
              ),
              activeIcon: Image.asset(
                'images/tab_bar_friends_hl.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                '通讯录',
                style: TextStyle(
                    fontSize: 16,
                    color: _currentIndex != 1 ? _defaultColor : _activeColor),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tab_bar_discover.png',
                height: 30,
                width: 30,
              ),
              activeIcon: Image.asset(
                'images/tab_bar_discover_hl.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                '发现',
                style: TextStyle(
                    fontSize: 16,
                    color: _currentIndex != 2 ? _defaultColor : _activeColor),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tab_bar_mine.png',
                height: 30,
                width: 30,
              ),
              activeIcon: Image.asset(
                'images/tab_bar_mine_hl.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                '我',
                style: TextStyle(
                    fontSize: 16,
                    color: _currentIndex != 3 ? _defaultColor : _activeColor),
              ))
        ],
      ),
    );
  }
}
