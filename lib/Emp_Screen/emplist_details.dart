import 'package:flutter/material.dart';

class ListDetailsPage extends StatelessWidget {
  final int index;

  ListDetailsPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text('List Details'),
      ),
      body: Center(
          child: Text(
        'The detail page $index',
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
