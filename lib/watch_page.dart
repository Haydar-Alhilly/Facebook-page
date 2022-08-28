// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WatchPage extends StatefulWidget {
  const WatchPage({Key? key}) : super(key: key);

  @override
  State<WatchPage> createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Watch Page"));
  }
}
