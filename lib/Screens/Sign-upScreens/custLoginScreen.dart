import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gronto/Components/buttonLogin.dart';
import 'package:gronto/Components/customApp.dart';
import 'package:gronto/Screens/MainScreens/homeScreen.dart';
import 'package:gronto/textStyles/poppinStyle.dart';
import 'package:gronto/widgetStyles/textfieldStyle.dart';

class custLoginScreen extends StatefulWidget {
  @override
  _custLoginScreenState createState() => _custLoginScreenState();
}

class _custLoginScreenState extends State<custLoginScreen> {
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
                          text: "Welcome",
                          style: poppinsStyle.copyWith(fontSize: 36),
                          children: [
                            TextSpan(
                                text: "\nBack!",
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
                            onPress: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Home()));},
                            text: "Login",
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
                            text: "Don't have an account?",
                            style: poppinsStyle.copyWith(fontSize: 12),
                            children: [
                              TextSpan(

                                  text: " Sign up",
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
