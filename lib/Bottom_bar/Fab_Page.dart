import 'package:flutter/material.dart';

class FavoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favorite Page'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
          child: Text(
        'Favorite',
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}
