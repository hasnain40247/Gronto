import 'package:flutter/material.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top: false,
      bottom: false,
      child: Center(
        child: Container(
          child: Text("Category", style: poppinsStyle.copyWith(fontSize: 100),),
        ),
      ),
    );
  }
}
