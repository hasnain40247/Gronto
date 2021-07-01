import 'package:flutter/material.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({Key key}) : super(key: key);

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top: false,
      bottom: false,
      child: Center(
        child: Container(
          child: Text("Shopping List", style: poppinsStyle.copyWith(fontSize: 100),),
        ),
      ),
    );
  }
}
