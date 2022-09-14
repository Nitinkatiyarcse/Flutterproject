// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
//import 'package:loginproject/HomePage.dart';
import 'package:loginproject/New_account/Registered.dart';
//import 'package:rflutter_alert/rflutter_alert.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _isObscure = true;

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else if (value.isEmpty) {
      return "User name";
    }
    {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.green[100],
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                            child: CircleAvatar(
                              radius: size.width * 0.15,
                              backgroundColor: Colors.greenAccent,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: size.width * 0.1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.17,
                      left: size.width * 0.53,
                      child: Container(
                        height: size.width * 0.053,
                        width: size.width * 0.053,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 0.10),
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.width * 0.3,
                ),
                Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: formkey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            autofocus: true,
                            decoration: InputDecoration(
                                icon: const Icon(
                                  Icons.person,
                                  color: Colors.white70,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                labelText: 'User',
                                hintText: 'Enter User Name',
                                hintStyle:
                                    const TextStyle(color: Colors.black)),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "* Required"),
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20, bottom: 0),
                          child: TextFormField(
                            autofocus: true,
                            decoration: InputDecoration(
                                icon: const Icon(
                                  Icons.email,
                                  color: Colors.white70,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                labelText: 'Email',
                                hintText: 'Enter Email',
                                hintStyle:
                                    const TextStyle(color: Colors.black)),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "* Required"),
                              EmailValidator(errorText: "Enter valid email id"),
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20, bottom: 0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                icon: const Icon(
                                  Icons.phone,
                                  color: Colors.white70,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                labelText: 'Phone',
                                hintText: 'Enter Phone Number',
                                hintStyle:
                                    const TextStyle(color: Colors.black)),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "* Required"),
                              MaxLengthValidator(10,
                                  errorText: "Only 10 digits")
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20, bottom: 0),
                          child: TextFormField(
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                icon: const Icon(
                                  Icons.lock,
                                  color: Colors.white70,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                labelText: 'Password',
                                hintText: 'Enter password',
                                hintStyle: const TextStyle(color: Colors.black),
                              ),
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
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20, bottom: 0),
                          child: TextFormField(
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                icon: const Icon(
                                  Icons.lock_outlined,
                                  color: Colors.white70,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                labelText: 'Confirm Password',
                                hintText: 'Enter Confirm password',
                                hintStyle: const TextStyle(color: Colors.black),
                              ),
                              validator: MultiValidator([
                                RequiredValidator(errorText: "* Required"),
                                MinLengthValidator(6,
                                    errorText:
                                        "Password should be atleast 6 characters"),
                                MaxLengthValidator(15,
                                    errorText:
                                        "Password should not be greater than 15 characters")
                              ])),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Container(
                            height: 45,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: RaisedButton(
                              color: Colors.greenAccent,
                              child: Text('Register',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  )),
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => RegisterPage()));
                                  // Alert(
                                  //   context: context,
                                  //   type: AlertType.success,
                                  //   title: "Successfully",
                                  //   desc: "Register Page",
                                  //   buttons: [
                                  //     DialogButton(
                                  //       onPressed: () => Navigator.pop(context),
                                  //       width: 100,
                                  //       child: const Text(
                                  //         "Ok",
                                  //         style: TextStyle(
                                  //             color: Colors.white,
                                  //             fontSize: 20),
                                  //       ),
                                  //     )
                                  //   ],
                                  // ).show();
                                  // } else {
                                  //   Alert(
                                  //     context: context,
                                  //     type: AlertType.error,
                                  //     title: "Failed",
                                  //     desc: "Please enter valid data",
                                  //     buttons: [
                                  //       DialogButton(
                                  //         onPressed: () => Navigator.pop(context),
                                  //         width: 100,
                                  //         child: const Text(
                                  //           "Cancle",
                                  //           style: TextStyle(
                                  //               color: Colors.white,
                                  //               fontSize: 20),
                                  //         ),
                                  //       )
                                  //     ],
                                  //   ).show();
                                }

                                // Alert(
                                //   context: context,
                                //   type: AlertType.success,
                                //   title: "New Account",
                                //   desc: "Register Success",
                                //   buttons: [
                                //     DialogButton(
                                //       onPressed: () => Navigator.pop(context),
                                //       width: 100,
                                //       child: const Text(
                                //         "Ok",
                                //         style: TextStyle(
                                //             color: Colors.white, fontSize: 20),
                                //       ),
                                //     )
                                //   ],
                                // ).show();
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: BorderSide(color: Colors.green),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
