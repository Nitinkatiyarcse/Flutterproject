// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text(
          'Forgot Password',
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Column(children: [
        Center(
          child: Column(
            children: [
              Container(
                width: size.width * 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 5.0, right: 10.0),
                    child: Text(
                      'Enter your email we will send instraction to reset your password',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 17.0, left: 15.0, right: 15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          icon: const Icon(
                            Icons.email_outlined,
                            color: Colors.white70,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          labelText: 'Email',
                          hintText: 'Enter email',
                          hintStyle: const TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Container(
                  height: 50,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: RaisedButton(
                      color: Colors.greenAccent,
                      child: Text('Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          )),
                      onPressed: () => debugPrint("Password send"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
