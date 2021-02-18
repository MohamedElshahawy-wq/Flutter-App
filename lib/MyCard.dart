import 'package:flutter/material.dart';
import 'package:labonee/Imageee.dart';
import 'package:labonee/bodyyy.dart';

// ignore: must_be_immutable
class MyCard extends StatefulWidget {
  String imgLink;
  String text;
  String icon;
  String textBody;

  MyCard({this.imgLink, this.text, this.icon, this.textBody});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Center(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Imageee()),
              );
            },
            child: Image.network(widget.imgLink),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => bodyyy(
                          text: widget.textBody,
                        )),
              );
            },
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          Text(
            widget.textBody,
            style: TextStyle(color: Colors.green, fontSize: 12),
          ),
          Row(
              // children: [Icon(Icons.thumb_up), Icon(Icons.comment)],
              children: [
                Icon(Icons.comment),
                Text("Comment"),
                Icon(Icons.thumb_up),
                Text("Like"),
              ])
        ],
      ),
    ));
  }
}
