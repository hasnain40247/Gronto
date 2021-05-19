import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gronto/Components/buttonLogin.dart';
import 'package:gronto/Components/customApp.dart';
import 'package:gronto/textStyles/poppinStyle.dart';
import 'package:gronto/widgetStyles/textfieldStyle.dart';

class partregisterScreen extends StatefulWidget {
  @override
  _partregisterScreenState createState() => _partregisterScreenState();
}

class _partregisterScreenState extends State<partregisterScreen> {
  final _formKey = GlobalKey<FormState>();
  static bool state = true;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: CustomApp(),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: "Create",
                          style: poppinsStyle.copyWith(fontSize: 36),
                          children: [
                            TextSpan(
                                text: "\nAccount",
                                style: TextStyle(color: appYellow))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Name",
                            style: poppinsStyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: TextFormField(
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              decoration: kTextStyle.copyWith(hintText: "Name"),
                            ),
                          ),
                          Text(
                            "Business",
                            style: poppinsStyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: TextFormField(
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              decoration: kTextStyle.copyWith(
                                  hintText: "Business Name"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: TextFormField(
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              decoration:
                                  kTextStyle.copyWith(hintText: "Phone"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: TextFormField(
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              decoration:
                                  kTextStyle.copyWith(hintText: "Email"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: Stack(
                              children: [
                                TextFormField(
                                  onChanged: (value) {},
                                  obscureText: state,
                                  decoration:
                                      kTextStyle.copyWith(hintText: "Password"),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 20,
                                  child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (state == false) {
                                            setState(() {
                                              state = true;
                                            });
                                          } else if (state == true) {
                                            setState(() {
                                              state = false;
                                            });
                                          }
                                        });
                                      },
                                      child: Icon(Icons.remove_red_eye)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          Center(
                              child: Button(
                            wfactor: 0.5,
                            backCol: appYellow,
                            screenSize: screenSize,
                            onPress: () {},
                            text: "Sign Up",
                          )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        text: TextSpan(
                            text: "Already have an account?",
                            style: poppinsStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 1),
                            children: [
                              TextSpan(
                                  text: " Login",
                                  style: TextStyle(color: appYellow))
                            ]),
                      ),
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
}
