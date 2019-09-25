import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String message;

  Message({this.message});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(message, style: TextStyle(fontSize: 22.0,color: Colors.white), textAlign: TextAlign.center,),
      ),
    );
  }
}