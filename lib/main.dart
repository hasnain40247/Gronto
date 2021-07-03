import 'package:flutter/material.dart';
import 'package:gronto/Screens/Sign-upScreens/custLoginScreen.dart';
import 'package:gronto/Screens/Sign-upScreens/customerRegistrationScreen.dart';
import 'package:gronto/Screens/MainScreens/homeScreen.dart';
import 'package:gronto/Screens/Sign-upScreens/joinasScreen.dart';
import 'package:gronto/Screens/Sign-upScreens/loginScreen.dart';
import 'package:gronto/Screens/Sign-upScreens/partnerRegisterScreen.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          accentColor: appYellow,
          textSelectionTheme: TextSelectionThemeData(cursorColor: appYellow)),
      initialRoute: 'loginScreen',
      routes: {
        'loginScreen': (context) => loginScreen(),
        'joinasScreen': (context) => joinasScreen(),
        'partregisterScreen': (context) => partregisterScreen(),
        'custregisterScreen': (context) => custregisterScreen(),
        'custLoginScreen': (context) => custLoginScreen(),
        'homeScreen': (context) => Home()
      },
    );
  }
}

