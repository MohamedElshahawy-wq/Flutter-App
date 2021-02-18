import 'package:flutter/material.dart';

class bodyyy extends StatefulWidget {
  String text;
  bodyyy({this.text});
  @override
  _bodyyyState createState() => _bodyyyState();
}

class _bodyyyState extends State<bodyyy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "BodyOfText",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0), child: Text(widget.text)),
          ],
        ));
  }
}
