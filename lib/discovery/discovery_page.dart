
import 'package:flutter/material.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  _DiscoveryPage createState() => _DiscoveryPage();

}

class _DiscoveryPage extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:Center(
        child: Text('发现'),
      ),
    );
  }
}