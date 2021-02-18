import 'package:flutter/material.dart';

class Imageee extends StatefulWidget {
  @override
  _ImageeeState createState() => _ImageeeState();
}

class _ImageeeState extends State<Imageee> {
  String img = "https://picsum.photos/seed/picsum/200/300";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Image",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: NetworkImage(img),
                fit: BoxFit.cover,
                width: 450,
                height: 450,
              ),
            ),
          ],
        ));
  }
}
