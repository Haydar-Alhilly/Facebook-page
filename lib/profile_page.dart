// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String avater;
  ProfilePage({Key? key, required this.name, required this.avater})
      : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          widget.name,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  color: Colors.black, size: 20),
              onPressed: () {
                Navigator.of(context).pop();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("pics/search iconn.png"),
            radius: 15,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 300,
                    width: 450,
                    margin: EdgeInsets.only(bottom: 70),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage("pics/flutterf.jpg"),
                            fit: BoxFit.fitWidth)),
                  ),
                  Positioned(
                    top: 170,
                    left: 130,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.avater),
                      radius: 100,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                widget.name,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_add, color: Colors.black),
                          SizedBox(width: 7),
                          Text(
                            "Friends",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff1877f2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "pics/messengar iicon.png",
                            color: Colors.white,
                            width: 35,
                            height: 25,
                          ),
                          SizedBox(width: 5),
                          Text("Message", style: TextStyle(fontSize: 18))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.more_horiz, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Divider(color: Colors.grey[500], indent: 5, endIndent: 5),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.school),
                            SizedBox(width: 7),
                            Text("Studied Atchitecture at Baghdad University",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.school),
                            SizedBox(width: 7),
                            Text("Went to Harithiyah Primary School",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.home),
                            SizedBox(width: 7),
                            Text("Lives in Baghdad, Iraq",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 7),
                            Text("From Baghdad, Iraq",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.query_builder),
                            SizedBox(width: 7),
                            Text("Joined February 2010",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.rss_feed),
                            SizedBox(width: 7),
                            Text("Followed by 79 People",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.more_horiz),
                            SizedBox(width: 7),
                            Text("See ${widget.name} About info",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ]),
                ),
              ),
              SizedBox(height: 500)
            ],
          ),
        ),
      ),
    );
  }
}
