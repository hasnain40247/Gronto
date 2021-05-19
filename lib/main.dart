import 'package:flutter/material.dart';
import 'package:gronto/Screens/custLoginScreen.dart';
import 'package:gronto/Screens/customerRegistrationScreen.dart';
import 'package:gronto/Screens/homeScreen.dart';
import 'package:gronto/Screens/joinasScreen.dart';
import 'package:gronto/Screens/loginScreen.dart';
import 'package:gronto/Screens/partnerRegisterScreen.dart';
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
        'homeScreen': (context) => homeScreen()
      },
    );
  }
}
