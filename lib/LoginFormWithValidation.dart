// ignore_for_file: deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:loginproject/New_account/Create_New_Account.dart';
import 'package:loginproject/New_account/Forget_Password.dart';
// ignore: unused_import
import 'package:rflutter_alert/rflutter_alert.dart';
import 'HomePage.dart';

// ignore: use_key_in_widget_constructors
class LoginFormValidation extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginFormValidationState createState() => _LoginFormValidationState();
}

class _LoginFormValidationState extends State<LoginFormValidation> {
  bool isHiddenPassword = true;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Sign In",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: email,
                      autofocus: true,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Email',
                        hintText: 'Enter Email Id',
                        hintStyle: const TextStyle(color: Colors.black),
                      ),
                      autofillHints: [AutofillHints.email],
                      validator: MultiValidator([
                        RequiredValidator(errorText: "* Required"),
                        EmailValidator(errorText: "Enter valid email id"),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextFormField(
                        controller: pass,
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.lock_outline,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Password',
                            hintText: 'Enter secure password',
                            suffixIcon: InkWell(
                                onTap: _togglePassword,
                                child: const Icon(Icons.visibility)),
                            hintStyle: const TextStyle(color: Colors.black)),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                          MinLengthValidator(6,
                              errorText:
                                  "Password should be atleast 6 characters"),
                          MaxLengthValidator(15,
                              errorText:
                                  "Password should not be greater than 15 characters")
                        ])
                        //validatePassword,        //Function to check validation
                        ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ForgotPassword()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45.0),
                    child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomePage(),
                              ),
                            );
                            Alert(
                              context: context,
                              type: AlertType.success,
                              title: "Login Success",
                              desc: "Welcome",
                              buttons: [
                                DialogButton(
                                  onPressed: () => Navigator.pop(context),
                                  width: 100,
                                  child: const Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                )
                              ],
                            ).show();
                          } else {
                            Alert(
                              context: context,
                              type: AlertType.error,
                              title: "Login Failed",
                              desc: "Please enter valid data",
                              buttons: [
                                DialogButton(
                                  onPressed: () => Navigator.pop(context),
                                  width: 100,
                                  child: const Text(
                                    "Cancle",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                )
                              ],
                            ).show();
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => CreateNewAccount()));
                    },
                    child: Container(
                      child: const Text(
                        'New User? Create Account',
                        style: TextStyle(color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(width: 1, color: Colors.black),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _togglePassword() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}
