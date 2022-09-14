import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chat Page'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
          child: Text(
        'Chat',
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}
