// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class EmpDetailsPage extends StatelessWidget {
  String name, email, password, url, phoneNumber, calories;

  EmpDetailsPage(
      {required this.name,
      required this.email,
      required this.password,
      required this.url,
      required this.phoneNumber,
      required this.calories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          title: Text('Employee Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${name}'),
            Text('Email: ${email}'),
            Text('Password: ${password}'),
            Text('URL: ${url}'),
            Text('PhoneNumber: ${phoneNumber}'),
            Text('Calories: ${calories}'),
          ],
        ),
      ),
    );
  }
}
