import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gronto/Components/buttonLogin.dart';
import 'package:gronto/Components/customApp.dart';
import 'package:gronto/Screens/partnerRegisterScreen.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

class joinasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomApp(),
      body: SafeArea(
        bottom: false,
        top: false,
        //important for transparent app bar
        child: Center(
          heightFactor: 1.2,
          child: Container(
            height: screenSize.height * 0.65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Image.asset("assets/images/mainLogo.png",scale: 1.2,),

                SvgPicture.asset("assets/images/mainLogo.svg"),
                Text("You are a...", style: poppinsStyle),
                Button(
                  screenSize: screenSize,
                  backCol: Color(0xFFFFD500),
                  text: "Partner",
                  onPress: () =>
                      {Navigator.pushNamed(context, "partregisterScreen")},
                ),
                Button(
                  screenSize: screenSize,
                  backCol: Color(0xFFFFD500),
                  text: "Customer",
                  onPress: () =>
                  {Navigator.pushNamed(context, "custregisterScreen")},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
