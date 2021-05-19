import 'package:flutter/material.dart';

class CustomApp extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;



  CustomApp(

      { Key key,}) : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),

    );
  }
}
