
import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  _MinePage createState() => _MinePage();

}

class _MinePage extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:Center(
        child: Text('我'),
      ),
    );
  }
}