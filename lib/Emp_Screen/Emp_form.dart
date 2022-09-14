// ignore_for_file: avoid_print, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:loginproject/Emp_Screen/Emp_details.dart';
import 'package:loginproject/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class EmployeeList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EmployeeListState();
  }
}

class EmployeeListState extends State<EmployeeList> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _url = new TextEditingController();
  TextEditingController _phoneNumber = new TextEditingController();

  TextEditingController _calories = new TextEditingController();

  // late String _name;
  // late String _email;
  // late String _password;
  // late String _url;
  // late String _phoneNumber;
  // late String _calories;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
        controller: _name,
        decoration: const InputDecoration(labelText: 'Name'),
        //maxLength: 20,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Name is Required';
          }
          return null;
        },
        onSaved: (String? value) {
          // _name = value!;
        });
  }

  // ignore: unused_element
  Widget _buildEmail() {
    return TextFormField(
        controller: _email,
        decoration: const InputDecoration(labelText: 'Email'),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Email is Required';
          }
          return null;
        },
        onSaved: (String? value) {
          //_email = value!;
        });
  }

  // ignore: unused_element
  Widget _buildPassword() {
    return TextFormField(
        controller: _password,
        decoration: const InputDecoration(labelText: 'Password'),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Password is Required';
          }
          return null;
        },
        onSaved: (String? value) {
          // _password = value!;
        });
  }

  // ignore: unused_element
  Widget _buildURL() {
    return TextFormField(
        controller: _url,
        decoration: const InputDecoration(labelText: 'URL'),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Url is Required';
          }
          return null;
        },
        onSaved: (String? value) {
          //_url = value!;
        });
  }

  // ignore: unused_element
  Widget _buildPhoneNumber() {
    return TextFormField(
        controller: _phoneNumber,

        //maxLength: 10,
        decoration: const InputDecoration(labelText: 'Phone number'),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Phone number is Required';
          }
          return null;
        },
        onSaved: (String? value) {
          //_phoneNumber = value!;
        });
  }

  // ignore: unused_element
  Widget _buildCalories() {
    return TextFormField(
        controller: _calories,
        decoration: const InputDecoration(labelText: 'Calories'),
        keyboardType: TextInputType.number,
        validator: (String? value) {
          int? calories = int.tryParse(value!);
          if (calories == null || calories <= 0) {
            return 'Calories must  be greater then 0';
          }
          return null;
        },
        onSaved: (String? value) {
          //_calories = value!;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Employee Form'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 10.0),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text('Settings'),
                        )
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.share,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text('Share'),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => MyApp()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Sign_Out',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
              child: const Icon(
                Icons.more_vert,
                size: 28.0,
              ),
            ),
          )
        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildName(),
                  _buildEmail(),
                  _buildPassword(),
                  _buildPhoneNumber(),
                  _buildURL(),
                  _buildCalories(),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 35,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.greenAccent),
                    child: FlatButton(
                        child: const Text(
                          'Submit',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        onPressed: () => {
                              if (_formKey.currentState!.validate())
                                {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => EmpDetailsPage(
                                          name: _name.text,
                                          email: _email.text,
                                          password: _password.text,
                                          url: _url.text,
                                          phoneNumber: _phoneNumber.text,
                                          calories: _calories.text))),
                                  Alert(
                                    context: context,
                                    type: AlertType.success,
                                    title: "Submitted",
                                    desc: "Are You Sure",
                                    buttons: [
                                      DialogButton(
                                        onPressed: () => Navigator.pop(context),
                                        width: 100,
                                        child: const Text(
                                          "Ok",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ).show(),
                                }
                              else
                                {
                                  Alert(
                                    context: context,
                                    type: AlertType.error,
                                    title: "Failed",
                                    desc: "Please enter valid data",
                                    buttons: [
                                      DialogButton(
                                        onPressed: () => Navigator.pop(context),
                                        width: 100,
                                        child: const Text(
                                          "Cancle",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ).show(),
                                },
                              _formKey.currentState!.save(),
                              print(_name),
                              print(_email),
                              print(_phoneNumber),
                              print(_url),
                              print(_password),
                              print(_calories),
                            }),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
