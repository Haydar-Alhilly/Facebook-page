// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'profile_page.dart';

class FaceHomePage extends StatefulWidget {
  const FaceHomePage({Key? key}) : super(key: key);

  @override
  State<FaceHomePage> createState() => _FaceHomePageState();
}

class _FaceHomePageState extends State<FaceHomePage> {
  bool click = true;

  Widget storyContainer(theimg) {
    return Container(
      height: 200,
      width: 110,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(theimg),
            fit: BoxFit.fill,
          )),
    );
  }

  List<String> storyimg = [
    "pics/image.jpg",
    "pics/image1.jpg",
    "pics/image2.jpg",
    "pics/image3.jpg",
    "pics/image4.jpg",
    "pics/image5.jpg"
  ];

  Widget facePost(String pageName, String who, String descrp, String img) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 630,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: Image(image: AssetImage("pics/person logo.png")),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pageName,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfilePage(
                                    name: who, avater: "pics/person logo.png"),
                              ),
                            );
                          },
                          child: Text(
                            "$who ' 3d '",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(Icons.public, color: Colors.grey[600], size: 20)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 185),
              Icon(Icons.more_horiz),
              SizedBox(width: 10),
              Icon(Icons.close)
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 5),
              Text(
                descrp,
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: 425,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.fill)),
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(width: 5),
              SizedBox(
                height: 30,
                width: 30,
                child: Image(image: AssetImage("pics/thumbup.png")),
              ),
              SizedBox(width: 5),
              Text("30"),
              SizedBox(width: 330),
              Text("9 comments")
            ],
          ),
          SizedBox(height: 4),
          Divider(color: Colors.grey[500], indent: 15, endIndent: 15),
          Row(
            children: [
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        fixedSize: Size(5, 5),
                        primary:
                            (click == false) ? Color(0xff1877f2) : Colors.grey),
                    onPressed: () {
                      setState(() {
                        click = !click;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.thumb_up_outlined),
                        SizedBox(
                          width: 3,
                        ),
                        Text('Like'),
                      ],
                    )),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        fixedSize: Size(5, 5), primary: Colors.grey),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mode_comment_outlined),
                        SizedBox(
                          width: 3,
                        ),
                        Text('Comment'),
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Colors.black, size: 30),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
            CircleAvatar(
                backgroundImage: AssetImage("pics/search iconn.png"),
                radius: 15,
                backgroundColor: Colors.grey),
            SizedBox(width: 9),
            CircleAvatar(
                backgroundImage: AssetImage("pics/messengar icon.png"),
                radius: 15,
                backgroundColor: Colors.grey),
            SizedBox(width: 10)
          ],
          elevation: 0,
          title: Text(
            "Facebook",
            style: TextStyle(
                color: Color(0xff1877f2),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          backgroundColor: Colors.white),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              color: Colors.white,
              child: Row(children: [
                CircleAvatar(
                  backgroundImage: AssetImage("pics/businessman.jpg"),
                  radius: 30,
                ),
                Container(
                  width: 370,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: TextField(
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "What's on your mind?",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ),
                SizedBox(
                  width: 30,
                  child: Image(image: AssetImage("pics/Image logo.png")),
                )
              ]),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 250,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Stack(alignment: Alignment.topCenter, children: [
                      Container(
                        height: 200,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("pics/me.jpg"),
                            fit: BoxFit.contain,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 37,
                          bottom: 36,
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.blue,
                            size: 35,
                          )),
                      Positioned(
                          bottom: 5,
                          left: 33,
                          child: Text(
                            "Create\n story",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ))
                    ]),
                    SizedBox(width: 5),
                    storyContainer(storyimg[0]),
                    storyContainer(storyimg[1]),
                    storyContainer(storyimg[2]),
                    storyContainer(storyimg[3]),
                    storyContainer(storyimg[4]),
                    storyContainer(storyimg[5])
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            facePost(
                "Iraqi Programmers",
                "Zahraa Mohummed",
                "Write a facebook page using flutter, and if you don't\nknow how..join me",
                "pics/maxresdefault.jpg"),
            SizedBox(height: 8),
            facePost(
                "Iraqi Programmers",
                "Haider Hamza",
                "This is my facebook page using flutter",
                "pics/Screenshot (34).png"),
            SizedBox(height: 8),
            facePost(
                "Iraqi Programmers",
                "Mohammed mahdii",
                "Have you seen my app? Don't miss the chance,\nit's extraordinary",
                "pics/mohammed app.png"),
            SizedBox(height: 8),
            facePost("Iraqi Programmers", "ahmed ali",
                "What do you think of flutter?", "pics/flutter1.png"),
            SizedBox(height: 8),
            facePost(
                "Iraqi Programmers",
                "Mythem Ali",
                "If like flutter don't forget to leave a like",
                "pics/flutterf.jpg"),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
