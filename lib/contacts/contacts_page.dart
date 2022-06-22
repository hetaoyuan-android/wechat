
import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPage createState() => _ContactsPage();

}

class _ContactsPage extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:Center(
        child: Text('通讯录'),
      ),
    );
  }
}