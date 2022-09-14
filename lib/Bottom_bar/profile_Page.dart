import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile Page'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
          child: Text(
        'Profile',
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}
