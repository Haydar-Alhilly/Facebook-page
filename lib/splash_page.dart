// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'main_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future Delay() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainPage()),
    );
  }

  @override
  void initState() {
    super.initState();
    Delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 400),
          Center(
            child: Image.asset(
              "pics/facebooklogo.png",
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(height: 300),
          Text("from", style: TextStyle(fontSize: 20)),
          Row(
            children: [
              SizedBox(width: 180),
              SizedBox(
                width: 40,
                height: 40,
                child: Image(image: AssetImage("pics/logo-Meta.png")),
              ),
              Text("Meta",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff1877f2),
                      fontWeight: FontWeight.bold)),
              SizedBox(width: 190)
            ],
          )
        ],
      ),
    );
  }
}
