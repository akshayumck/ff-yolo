// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class SplText extends StatefulWidget {
  const SplText({
    Key? key,
    this.width,
    this.height,
    required this.hello,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String hello;

  @override
  _SplTextState createState() => _SplTextState();
}

class _SplTextState extends State<SplText> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(widget.hello,
            style: TextStyle(color: Colors.white, fontSize: 52)),
        color: Colors.blueAccent);
  }
}
