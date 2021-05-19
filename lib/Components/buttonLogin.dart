
import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.screenSize,
    @required this.onPress,
    this.text,
    this.backCol,
    this.textCol,
    this.borderCol, this.wfactor, this.hfactor,
  }) : super(key: key);

  final Size screenSize;
  final String text;
  final Color backCol;
  final Color textCol;
  final Color borderCol;
  final Function onPress;
  final double wfactor;
  final double hfactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wfactor==null?screenSize.width * 0.6:screenSize.width * wfactor,
      height: hfactor==null?50:hfactor,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backCol),
            elevation: MaterialStateProperty.all(1),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Color(0xFFFFD500))),
            )),
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
              color: textCol == null ? Colors.white : textCol,
              fontFamily: "Poppins",
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}