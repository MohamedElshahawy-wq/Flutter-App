import 'package:flutter/material.dart';

import 'Models/post.dart';
import 'MyCard.dart';
import 'Services/postsService.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<Post> postList = new List();

  List<String> imgss = [
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/seed/picsum/200/300"
  ];

  @override
  void initState() {
    super.initState();
    getPostFromsServer();
  }

  getPostFromsServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "List Pics",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: postList.length,
            itemBuilder: (BuildContext context, int index) {
              return MyCard(
                  imgLink: imgss[index],
                  text: postList[index].title,
                  textBody: postList[index].body);
            }));
  }
}
