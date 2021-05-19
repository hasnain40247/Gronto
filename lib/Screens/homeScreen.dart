import 'package:flutter/material.dart';
import 'package:gronto/textStyles/poppinStyle.dart';
class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        body: SafeArea(
          top: false,
          bottom: false,
          child: Center(
            child: Container(
              child: Text("Home", style: poppinsStyle.copyWith(fontSize: 100),),
            ),
          ),
        ),
      ),
    );
  }
}
