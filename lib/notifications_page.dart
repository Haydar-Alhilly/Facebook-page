import 'package:flutter/material.dart';

class NotifiPage extends StatefulWidget {
  const NotifiPage({Key? key}) : super(key: key);

  @override
  State<NotifiPage> createState() => _NotifiPageState();
}

class _NotifiPageState extends State<NotifiPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Notifications Page"));
  }
}
