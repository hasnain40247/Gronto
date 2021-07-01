import 'package:flutter/material.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top: false,
      bottom: false,
      child: Center(
        child: Container(
          child: Text("Your Account", style: poppinsStyle.copyWith(fontSize: 100),),
        ),
      ),
    );
  }
}
