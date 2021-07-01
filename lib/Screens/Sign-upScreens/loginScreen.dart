import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gronto/Components/buttonLogin.dart';
import 'package:gronto/textStyles/poppinStyle.dart';


class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Center(
        child: Container(
          height: screenSize.height*0.55,

          child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Image.asset("assets/images/gg.png",scale: 1.2,),

              Button(
                screenSize: screenSize,
                backCol: Color(0xFFFFD500),
                text: "Join Us",
                onPress: ()=>{
                  Navigator.pushNamed(context, "joinasScreen")
                },
              ),
              Container(
                child: Column(
                  children: [
                    Text("Already have an account?",style: poppinsStyle),
                    SizedBox(height: 10,),
                    Button(
                      screenSize: screenSize,
                      backCol: Color(0xFFFFFFFF),
                      text: "Login",
                      textCol: Colors.black,
                     onPress: ()=>{
                        Navigator.pushNamed(context, "custLoginScreen")
                     },
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}





